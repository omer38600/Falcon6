public class StringDemoClass{
    public void stringMethod(){
        string sessionDescription = 'learning string methods in apex language';

        integer lengthOfString = sessionDescription.length();

        system.debug('the length of the string is '+ lengthOfString);

        string uppercaseofString = sessionDescription.toUpperCase();

        system.debug(uppercaseofString);

        string firstletter = sessionDescription.capitalize();

        system.debug(firstletter);

        boolean containsApex = sessionDescription.contains('apex');

        system.debug('has apex '+ containsApex);

        boolean containsSalesforce = sessionDescription.contains('salesforce');

        system.debug('has salesforce '+ containsSalesforce);

        boolean containsAPEX2 = sessionDescription.containsIgnoreCase('APEX');

        system.debug('has APEX '+ containsAPEX2);

        boolean containsApex3 = sessionDescription.contains('Apex');

        system.debug('has Apex ? '+ containsApex3);

        string apexx = 'apex';

        string ap ='Apex';

        boolean apexCheck = apexx.equals(ap);

        system.debug('apex check' + apexCheck);
        
        string capital = sessionDescription.toUpperCase();

        system.debug(capital);
        


    

    }
}


