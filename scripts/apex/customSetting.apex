map<string, Country_Code__c> mapCC = Country_Code__c.getAll();
system.debug('map of country code = '+ mapCC);
for( string eachCountry : mapCC.keySet()){
    system.debug('Country = ' + eachCountry + ' code = ' + mapCC.get(eachCountry).Country_Code__c);
}