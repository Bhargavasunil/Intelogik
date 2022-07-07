({
	onInit : function(component, event, helper) {
		var varWidth = component.get('v.width');
        var size= varWidth ==='Large' ?3 :(varWidth==='Medium'? 6:12);
        component.set('v._cellSize',size);
	}
})