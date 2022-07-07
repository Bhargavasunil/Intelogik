@RestResource(urlMapping='/myDomain')
global class Integrationfourthcl {
    @HttpGet
    global static List<Account> getAccounts(){
        List<Account> accList = new List<Account>();
        accList=[SELECT  Name, Industry, Rating FROM Account];
        return accList;
    }
}