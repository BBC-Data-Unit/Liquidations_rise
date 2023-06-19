#This script merges the national postcodes database with our insolvencies scrape (with postcode extracted)

#First of all we need to load the tidyverse (for some reason I had to install dplyr seperately even though it is part of the tidyverse)
library(janitor)
library(dplyr)
library(tidyverse)


#First read in the postcode lookup (from the ONS Open Geography portal here: https://geoportal.statistics.gov.uk/datasets/9ac0331178b0435e839f62f41cc61c16/about) 
#Then read in the insolvencies scrape from running the Python notebook. You may need to set the date column in date format (not character)
postcodes <- read.csv("National_Statistics_Postcode_Lookup_UK.csv")
ins <- read.csv("insolvency_scrape1.csv")

#Let's check the first few rows
head(insolvencies)
head(postcodes)


##then clean the column headers on both datasets - and get rid of any whitespace in our merge column (basically flatten the postcode so there is no space in between)
insclean <- ins %>%
  janitor::clean_names() %>% 
  mutate(no_whitespace = gsub(",", "", no_whitespace))

postcodeclean <- postcodes %>% 
  janitor::clean_names() %>% 
  mutate(postcode_1 = gsub(" ", "", postcode_1))

#Now let's merge the datasets by the local authority code
newmerge2 <- insolvencies %>%
  left_join(postcodeclean, by = c("la"="local_authority_code"))

#you can export this large sheet now if you wish
write.csv(newmerge, "insolvwithLA.csv")

##We can just make a smaller sheet that we can work with in Excel or Sheets: this one should work for a simple regional analysis
##this will have just nine variables as opposed to 54
trimmerge <- newmerge %>% 
  select(companyname, address, compnum, noticecategory, noticecode, noticetype, pubdate, typeofliq, local_authority_name, region_name)

#This will output that as a csv to check.
write.csv(trimmerge, "triminswithLA3.csv")

#This is how we can filter our results down to corporate insolvency
trimmerge <- filter(trimmerge, noticecategory=="Corporate Insolvency")

#Now we want to remove the duplicate company numbers. This is because some companies appear multiple times. For your study, you may want to count the start of insolvency proceedings only.
trimmerge2 <-  trimmerge[!duplicated(trimmerge$compnum), ] 

#Let's write the csv
write.csv(trimmerge2, "trimmerge2.csv")

#Now I want to do some analysis - I am using just the 2443 code data - this is just for creditors' voluntary liquidations (which I've called triminsfordedupe2)
insworking <- Triminsfordedupe2

#This needs de-duplicaing
insworking2 <- insworking[!duplicated(insworking$compnum), ] 

#now let's pivot using group_by to get an LA count

inspivot <- insworking2 %>% 
  group_by(local_authority_name) %>% summarise_at(vars(companyname),funs(length))

#write the de-duped csv
write.csv(insworking2, "insworking2.csv")
