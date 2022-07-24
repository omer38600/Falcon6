import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {
    fruits = ["Apple", "Banana", "Orange", "Pomogranate"];
    number1 = 20;
    number2 = 10;

    get firstFruit() {
        return this.fruits[0];

    }

    get sumOfNums() {
        return this.number1*this.number2;
        
    }
}