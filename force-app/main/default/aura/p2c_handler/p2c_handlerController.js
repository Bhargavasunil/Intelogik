({
	handleComponentEvent : function(component, event, helper) {
		var vmeassage=event.get('message');
        cmp.set("v.messageFromEvent",message);
        var numEventsHandled = parseInt(component.get("v.numEvents"))+1;
        cmp.set("v.numEvents",numEventsHandled)
	}
})