import { LightningElement, track, wire } from 'lwc';
import getAccountList from '@salesforce/apex/AccountHelper.getAccountList';

export default class CacheLwc extends LightningElement {
 @track columns = [{
               label :'Id' ,
              fieldName : 'Id',
              type : 'Id'

           },
           {label :'Account Name' ,
           fieldName : 'Name',
           type : 'text'
          },

          {label :' Phone' ,
            fieldName : 'Phone',
            type : 'Phone'
            },

            {label :'Website' ,
            fieldName : 'Website',
            type : 'url'
            }]          

@track nm
getAcc (event){
    this.nm = event.target.value;
    
}
  @track accList  
 @track error
@wire (getAccountList,{varname: '$nm'}) rtn ({error , data}){
    if(data){
            This.accList = data;
    }  else if(error){
        this.error = error;
    }
}

}