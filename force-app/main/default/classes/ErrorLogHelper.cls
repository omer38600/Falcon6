public with sharing class ErrorLogHelper {
    public static void createErrorLogs(String ProcessName, String logDetails, Datetime logDate) {
        Error_Log__c error = new Error_Log__c();
            error.Process_Name__c = ProcessName;
            error.Log_Details__c = logDetails;
            error.Log_Date_Time__c = logDate;
            insert error;
    }
}
