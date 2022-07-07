import { LightningElement,api,track } from 'lwc';

export default class LDS_lightning_record_from extends LightningElement {

         @api recordId  
         @api objectApiName
         connectedCallback(){
             this.objectApiName = this.objectApiName;
         }

}