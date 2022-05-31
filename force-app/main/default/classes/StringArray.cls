public with sharing class StringArray {
    public static list<string> generateStringArray( integer returnedStrings) {

        list<string> Strings = new list<string>();

        for (Integer i = 0; i < returnedStrings; i++) {

            Strings.add('Test ' + i);
        }
        System.debug(Strings);
        return Strings;
    }
}
