import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import ACCNUMBER_FIELD from '@salesforce/schema/Account.AccountNumber';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecoedFormAccount extends LightningElement {
    recordId = '0018c00002HrwTdAAJ'
    ObjectName = ACCOUNT_OBJECT;
    fields = [NAME_FIELD, TYPE_FIELD, INDUSTRY_FIELD, PHONE_FIELD, REVENUE_FIELD, RATING_FIELD, ACCNUMBER_FIELD];

    //in recordfrom we put fields in an arrray but in view and edit forms we put each field as variables and have ,ore customization
    //in record from there is no custom sytling but in edit and view forms we have buttons, we have styling
    //in record form eveything is handled by lwc machine but other we need to assign
    //it is preferable to go for record from as much as possible if there is no customization is required
    

    successHandler(){
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "The account record has been saved successfully!",
            variant: "success"

        });
        this.dispatchEvent(successToast);
    }
}