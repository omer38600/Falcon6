import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CASE_OBJECT from '@salesforce/schema/Case';

export default class GetCasePicklistValues extends LightningElement {
    maintenanceRtId;
    typeOptions;
    reasonOptions;

    @wire(getObjectInfo, {objectApiName: CASE_OBJECT})

    objectInfoHandler({data, error}) {

        if(data){
            console.log(data);
            const rtids = data.recordTypeInfos;
            this.maintenanceRtId = Object.keys(rtids).find(rtid =>(rtids[rtid].name === 'Maintenance'));
            console.log("maintenanceRtId: " + this.maintenanceRtId);
        }
        if(error){
            console.error(error);
        }
    }

    @wire(getPicklistValuesByRecordType, {objectApiName: CASE_OBJECT , recordTypeId: '$maintenanceRtId'})

    picklistHandler({data, error}) {
        if(data){
            console.log(data);
            this.typeOptions = this.picklistGenerator(data.picklistFieldValues.Type);
            this.reasonOptions = this.picklistGenerator(data.picklistFieldValues.Reason);
        }
        if(error) {
            console.error(error);
        }
    }

    picklistGenerator(info){
        info.values.map(item => ({

            label: item.label,
            value: item.value

        }));


    }


   }