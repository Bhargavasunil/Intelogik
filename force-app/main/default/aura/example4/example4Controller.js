({
	display : function(component, event, helper) {
		var isVal=component.get('v.indStartVal');
        var act = component.get('c.getAccountDetails');
        $A.enqueueAction(act,false);
        act.setParam('iname',isVal);
        act.setCallback(this,function(response){
            var rs=response.getReturnValue();
            if(rs!=""){
                component.set('v.accountList',rs);
                component.set('v.status',true);
            }
            else{
                component.set('v.msg','sorry no records are available');
                component.set('v.status',false);
            }
        })
	}
})