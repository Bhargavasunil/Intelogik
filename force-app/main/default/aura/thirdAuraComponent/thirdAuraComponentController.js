({
	myAction : function(component, event, helper) {
		alert(" alert from Demo1 function");
        //to call one function in another function 
        //1.get the function 
        //2.we have to add the function to the Queue.
        //3.Execute with call back.
        var func1=component.get('c.myAction1');
         //2
           $A.enqueueAction(func1,false);  //don't use "v.varName"  //2. we have the other parameter true-runs asynchronously
                                                               //false- runs synchronously.
 	} ,
   myAction1 : function(component, event, helper){
         alert("alert from the demo2 function");
    }
    
})