import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {     //since it is an object 'location' 
        //we cannot directly track its changes if @track is not
        //decorated
        city: "caxias",
        country: "brazil",
        postalcode: "9501030"
    }

    changeHandler(event){
        this.location.city = event.target.value;
    }
}