import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    //local variables, local properties and object in js we can access them from html inside HElloWOrld component
    // local variables directly we define them with = and ; object in {}, list in [], we reach them from js like{fullname}
    //or{detail.name}
    name; //undefined
    fullname = 'Salesforce LWC';
    // {} refers to object
    detail = {
        name: "Omer",
        age: 24,
        place: "Caxias, Brazil"

    };
    year = 2022;



}  