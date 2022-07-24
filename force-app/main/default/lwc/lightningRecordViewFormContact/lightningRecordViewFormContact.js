import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import ACCNAME_FIELD from '@salesforce/schema/Contact.AccountId';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import MOBILE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import NAME_FIELD from '@salesforce/schema/Contact.Name';


export default class LightningRecordViewFormContact extends LightningElement {
    recordId = "0038c00002kLl4IAAS";
    objectName = CONTACT_OBJECT;

    fields = {
        name: NAME_FIELD,
        accname: ACCNAME_FIELD,
        mobile: MOBILE_FIELD,
        title: TITLE_FIELD,
        email: EMAIL_FIELD,
        phone: PHONE_FIELD,

    };
}