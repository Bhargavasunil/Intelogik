({
	addition : function(component, event, helper) {
		//get the inputs from the UI
		var firNum = component.get("v.fno");
        var secNum = component.get("v.sno");
        var add= parseInt(firNum)+parseInt(secNum);
        var act = $A.get('e.c:ResultEvent');   //calling ResultEvent
        console.log('1');
        //set variable values
        act.setParams({'sum':add});   
        //step4-fire the event
        act.fire();                       
	}
})