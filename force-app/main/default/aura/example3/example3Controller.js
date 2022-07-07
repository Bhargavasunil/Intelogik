({
	myAction : function(component, event, helper) {
		alert("demo1");
        console.log('1')
        var act = component.get('c.myAction1');
        $A.enqueueAction(act,false);
	},
    myAction1 : function(component,event,helper){
        alert("demo2");
        console.log('2');
    }
})