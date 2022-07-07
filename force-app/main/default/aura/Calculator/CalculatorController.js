({
	Add : function(component, event, helper) {
		//declare the variables 
		let fno = component.get("v.firNum");
        let sno = component.get("v.secNum");
             let sum=parseInt(fno) + parseInt(sno);        //let sum = fno+sno; we can't use this because UI sending the data in the form of "string"
                                                              //To convert string to Integer used parseInt
        let Res = 'Addition :'+sum;
        component.set('v.Result',Res);
	},
    Difference:function(component,event,helper){
        let fno = component.get("v.firNum");
        let sno = component.get("v.secNum");
        let diff = parseInt(fno)-parseInt(sno);
        let Res = "Subtraction: "+diff;
        component.set("v.Result",Res);
    }
})