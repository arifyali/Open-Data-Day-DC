
ConDeaths = read.csv("Accidental_Drug_Related_Deaths_January-June_2015.csv")

ConDeaths$Cocaine = as.character(ConDeaths$Cocaine)
ConDeaths$Any.Opioid = as.character(ConDeaths$Any.Opioid)
unique(ConDeaths$Any.Opioid)

summary(ConDeaths)

ConDeaths$Sex = as.character(ConDeaths$Sex)
ConDeaths$Sex[ConDeaths$Sex == "Male"] = 1
ConDeaths$Sex[ConDeaths$Sex == "Female"] = 0
ConDeaths$Sex = as.numeric(ConDeaths$Sex)
unique(ConDeaths$Sex)

ConDeaths$Any.Opioid[ConDeaths$Any.Opioid != 'Y'] = 0
ConDeaths$Any.Opioid[ConDeaths$Any.Opioid == 'Y'] = 1
unique(ConDeaths$Any.Opioid)
#write.csv(ConDeaths[ConDeaths$Any.Opioid == "1"], "CTDeathsOp.csv")

library("gdata")
CTcrime = read.xls("table_8_offenses_known_to_law_enforcement_by_connecticut_by_city_2012.xls",sheet = 1)
for(i in names(CTcrime[,-1])){
    CTcrime[, i] = as.numeric(CTcrime[,i])
    }

unique(ConDeaths$Any.Opioid)

ConDeaths[ConDeaths$Any.Opioid == "1"]



#table(ConDeaths$Death.City)
#ConDeaths$Cocaine[ConDeaths$Cocaine == "Y"] = 1
#ConDeaths$Cocaine[ConDeaths$Cocaine != "Y"] = 0
#ConDeaths$Any.Opioid[ConDeaths$Any.Opioid == "Y"] = 1
#ConDeaths$Any.Opioid[ConDeaths$Any.Opioid != "Y"] = 0
#cor(as.numeric(ConDeaths$Cocaine), as.numeric(ConDeaths$Any.Opioid))
