library(devtools)
library(tidyverse)
library(testthat)

document()
build()
install()
check()

##### Setup stuff
usethis::use_package('mongolite')

#####
# move to a test
source('config.R')
library(mongolite)

daacs_conn <- getDAACSConnection()
URI <- paste0('mongodb://', mongo.user, ':', mongo.pass, '@',
			  mongo.host, ':', mongo.port, '/', mongo.db)
m.users <- mongo(url = URI, collection = mongo.collection.users)
m.user_assessments <- mongo(url = URI, collection = mongo.collection.assessments)
m.events <- mongo(url = URI, collection = mongo.collection.events)
