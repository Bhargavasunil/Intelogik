({
	display : function(component, event, helper) {
        var pmm =event.getParam('sum');  //wrong: getParam('v.sum');
        component.set('v.output',pmm);
	}
})