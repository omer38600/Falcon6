import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import LEAD_OBJECT from '@salesforce/schema/Lead';
import LEADSOURC_FIELD from '@salesforce/schema/Lead.LeadSource';



export default class GetLeadSourcePicklist extends LightningElement {

    leadRtId;
    leadSourceOptions = [];
    selectedLeadSource;

    @wire(getObjectInfo, {objectApiName: LEAD_OBJECT})
    
    objectInfoHandler({data, error}){
        if(data) {
            this.leadRtId = data.defaultRecordTypeId;
        }
        if(error){
            console.error(error);
        }
        }
    @wire(getPicklistValues, {fieldApiName: LEADSOURC_FIELD, recordTypeId: '$leadRtId'})
    
    picklistHandler({data,error}){
        if(data){
            console.log(data);
            this.leadSourceOptions= this.picklistGenerator(data);

        }
        if(error){
            console.error(error);

        }
    }

    picklistGenerator(data) {
        return data.values.map(item => ({
            label : item.label,
            value: item.value

        }));
    }

    leadsourceChangeHandler(event){
        this.selectedLeadSource = event.target.value;
    }
}
  
