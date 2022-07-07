public class TejaAppGetData {
    public static void getAccountData(){
        try{Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:muralicredentials/services/apexrest/AccountList');
        req.setMethod('GET');
        HttpResponse res = h.send(req);
        Integer resCode=res.getStatusCode();
        system.debug(resCode);
        system.debug(res.getStatus());
            system.debug('/n');
        if(resCode!=200){
           system.debug(res.getBody());
        }
        else{
            system.debug('error');
        }
           }
        catch(exception e){
            system.debug(e.getMessage());
        }
    }
        
}