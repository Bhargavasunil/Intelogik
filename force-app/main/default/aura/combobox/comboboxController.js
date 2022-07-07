({
	doInIt : function(component, event, helper) {
		var act=component.get("c.getAccountNames");
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var anm = response.getReturnValue(); //anm is collection reference name
            //by default by making a query in apex we get Id
             // to seperate names from the returned records we use for loop,and created a new list to store the names from the accounts
            var acNames=[];
            
            for(var i=0;i<anm.length;i++){
                var item= {"label":anm[i],"value":anm[i]};
                acNames.push(item);
            }
            component.set('v.accOptions',acNames);
        });
	},
    displayRecord : function(component, event, helper) {
        component.set("v.cols",[
            {label: 'Account Name',fieldName:'Name',type:'text'},
            {label:'Billing city',fieldName:'BillingCity',type:'text'},
            {label:'Phone',fieldName:'Phone',type:'phone'},
            {label:'Industry',fieldName:'Industry',type:'picklist'}
        ]);
        var act=component.get('c.showRecords');
        //get the value from variable and set as argument for method2
        var acNameSelected = component.get('v.input1');
        act.setParam("acNameSelected",acNameSelected);
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var anmrec = response.getReturnValue();
            if(anmrec!=''){
                component.set('v.accRecords',anmrec);
            }
        })
    }
})