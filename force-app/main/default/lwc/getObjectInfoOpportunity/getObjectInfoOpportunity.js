import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity'

export default class GetObjectInfoOpportunity extends LightningElement {
    defaultRtId;
    refinedpetroliumRtId ;

    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    contactInfoHandler({data, error}) {
        if(data){
            console.log(data);
            this.defaultRtId = data.defaultRecordTypeId;
            const rtids = data.recordTypeInfos; 
           
           this.refinedpetroliumRtId = Object.keys(rtids).find(rtid => rtids[rtid].name === "Refined Petrolium");  //this is the record type name created in the org must be exact match
        }
        if(error){
            console.log(error);
        }
    }
}