({
	SquareOfNumber  : function(component, event, helper) {
		var bid = event.getSource().getLocalId();
        console.log('Bid>>'+ bid);
        if(bid=='button1'){
            //if bid == button1 we have to call add function
            var act = component.get("c.add");
            $A.enqueueAction(act,false);
            act.setCallback(this,function(response){
                var s=response.getReturnValue();
                var sq= s*s;
                component.set('v.result',sq);
            });
        }
        else if(bid=="button2"){
            let act=component.get('c.subtract');             
            $A.enqueueAction(act,false); 
            act.setCallback(this,function(response){                 
                var s=response.getReturnValue();                
                var sq=s*s;                 
                var res='Square: '+sq; 
                component.set('v.result',res);             
            });          
        } 
        
        
        
	},
    add  : function(component, event, helper) {
        //we have to get the data from the UI by using "component.get()" and assign the value to the variable  .
          let fno = component.get('v.fNumber');
          let sno=component.get('v.sNumber');
          var sum = fno+sno;
          return sum;back
          },
    difference: function(component, event, helper) {
        let fno=component.get('v.fNumber');
        let sno=component.get('v.sNumber');
        var diff=fno-sno;
        return diff;
    }
        
})