 import { LightningElement } from 'lwc';

export default class TemplateLooping extends LightningElement {
    countries = ["United States", "United Kongdom", "Singapore", "Malaysia"];

    contacts = [
        {
            id : 1,
            Name : "Jack",
            Lastname : "Sparrow"
        },

        {
            id: 2,
            Name : "David",
            Lastname : "Beckham"
        }
    ]
}