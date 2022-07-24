import { LightningElement } from 'lwc';

import OPPORTUNITY_OBJECT from "@salesforce/schema/Opportunity"

import OPPNAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCNAME_FIELD from '@salesforce/schema/Opportunity.AccountId';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordFormOpportunity extends LightningElement {
   recordId = "0068c00000qgKWWAA2";
    objectName = OPPORTUNITY_OBJECT;
    fields = [OPPNAME_FIELD,ACCNAME_FIELD,TYPE_FIELD,STAGE_FIELD,AMOUNT_FIELD,LEADSOURCE_FIELD];

    successHandler(){
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "The opportunity record has been saved successfully!",
            variant: "success"

        });
        this.dispatchEvent(successToast);
    }

    errorHandler(){
        const errorMes = new ShowToastEvent({
            title: "Error",
            message: "An error has been committed!",
            variant: "error"

        });
        this.dispatchEvent(errorMes);
    }
}