public class aura6thexmpcontroller {
	@AuraEnabled
    public static List<Contact> getContactData() {
        List<Contact> conList =[SELECT Name, AccountId,Email from Contact];
        return conList;
    }
}