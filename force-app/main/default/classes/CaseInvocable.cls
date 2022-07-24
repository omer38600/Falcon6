public with sharing class CaseInvocable {

    @InvocableMethod(Label='Send Email & Save Activity'
    description='Sends an email and saves the same as an activity'
    category='Case')

    public static void sendEmail(List<FlowInput> inputs){
        Flowinput input = inputs[0];
        list<Messaging.SingleEmailMessage> msgs = new list<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg = new  Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactId);
        msg.setSaveAsActivity(true);
        msg.setSubject('Case Created: ' + input.caseNumber);
        msg.setPlainTextBody('Hello there, \n A case has been creaed for you to answer your query. '
        + 'One of our customer representatives is going to reachout to you. Stay tuned!'
        + '\n Thank you!');
        msgs.add(msg);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(msgs);
        for(Messaging.SendEmailResult result : results){
            if(result.isSuccess()){
                //create success log
                system.debug('Successfully sent!');
            } else{
                // create a log 
                System.debug(result.getErrors());

            }
        }


    }


    public class FlowInput {
      @InvocableVariable(label='Case Number' description='TO Get Case Number' required=true)
      public String caseNumber;

      @InvocableVariable(label='Contact Id' description='TO Get Contact Id' required=true)
      public Id contactId;

    }
    
}
