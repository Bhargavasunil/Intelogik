@RestResource(urlMapping='/akunaMatata123')
global class MuraliPermissionApp {
    @HttpGet
    global static List<Account> setAccountData(){
        List<Account> accList = [SELECT Id,Name,Rating,Industry from Account];
        return accList;
    }
}