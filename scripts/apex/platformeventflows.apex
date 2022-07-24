Custom_Notifications__e evt = new Custom_Notifications__e();
evt.Message__c = 'Yahoo....Leads have been processed successfully!';
evt.Initiator__c = 'Leads processing batch';
Eventbus.publish(evt);
