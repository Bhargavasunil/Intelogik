({
	myAction : function(component, event) {
		var vcmpEvent=cmp.getEvent("cmpEvent");
        vcmpEvent.setParams({"msg":"This message is passed by  Notifier"})
        vcmpEvent.fire();
	}
})