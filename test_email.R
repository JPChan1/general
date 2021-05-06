packages <- c('data.table'
              , 'tidyverse'
              , 'janitor'
              , 'vroom'
              , 'devtools'
              , 'blastula')

packages_to_install <- packages[!packages %in% row.names(installed.packages())]
lapply(packages_to_install, install.packages)

packs_to_load <- packages[!packages %in% (.packages())]
lapply(packs_to_load, library, character.only = T)
 

email <- blastula::compose_email(
  body = "test"
)

smtp_send(
  email = email
  , subject = 'test'
  , to = 'jpcchan1@gmail.com'
  , from = 'jpcchan1@gmail.com'
  , credentials = creds_file('/Users/Jack/Documents/gmail_key')
)
