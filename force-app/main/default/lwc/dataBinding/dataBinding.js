import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    fullname = 'Omer';
    course = 'Salesforce Developer';

    changeHandler(event){
       this.course = event.target.value;
    }
}