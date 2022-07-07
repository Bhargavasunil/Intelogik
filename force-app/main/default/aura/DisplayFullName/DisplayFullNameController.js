({
	display : function(component, event, helper) {
		    let fname=component.get('v.firstName');
            console.log(fname);
            let lName=component.get('v.secondName');
            var fullName=fname+lName;
            component.set('v.fullName',fullName);
	}
})