import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordFormContact extends LightningElement { 
    recordId = '0038c00002kLl4IAAS'
    ObjectName = CONTACT_OBJECT;

    successHandler(){
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "The CONTACT record has been saved successfully!",
            variant: "success"

        });
        this.dispatchEvent(successToast);  //this is for showing success message on component
    }

    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title: "Error",
            message: "An error occured while saving the record!",
            variant: "error"

        });
        this.dispatchEvent(errorEvent);
    }
}