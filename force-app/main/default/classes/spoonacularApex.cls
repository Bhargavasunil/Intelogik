public class spoonacularApex {
    @auraEnabled
    public static Map<String,Object> spoonacularGetMethod() {
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.spoonacular.com/recipes/complexSearch?apiKey=e6e176e0bc5b4f0bb102f086c0f0f888');
        req.setMethod('GET');
        HttpResponse res = h.send(req);
        Integer resCode = res.getStatusCode();
        
        if(resCode==200) {
            
            String response = res.getBody();
            system.debug('>>>>>>>>response'+response);
            Map<String,Object> list1= (Map<String,Object>)JSON.deserializeUntyped(response);
            return list1;
        }
        else {
            return null;
        }
    }

}