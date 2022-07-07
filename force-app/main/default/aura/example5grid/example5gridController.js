({
	display : function(component, event, helper) {
		var act = component.get('c.getAccounts');
        $A.enqueueAction(act);
          act.setCallback(this, function(response){
           var res = response.getReturnValue();
            if(res!=''){
              component.set('v.accountList',res);
               component.set('v.status',true);
            }
            else{
               component.set('v.msg','No records existing');
               component.set('v.status',false);
            }

        })
	}
})