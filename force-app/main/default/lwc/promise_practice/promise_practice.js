import { LightningElement } from 'lwc';

export default class Promise_practice extends LightningElement {

    onclick(){
        
   function onclivarck (data){
       return new Promise(function(resolve,reject){
            if(data==='success'){
                return resolve('executed successfully');
            }
            else{
                return reject('unsuccessfully executed');
            }
                 
        })
     }

     onclivarck('success').then(function(result){
                console.log(result)
         }).catch(function(error){
             console.log(error);
         })
     }

     onclick1(){
         alert('Hi RJ');
     }
}

 /*1.create a function 
 2. create the promise object
 3.In the promise constructor it will execute the function, parameters are resolve,reject
    if succesfully excute means resolve will be works,else reject works

 4. */