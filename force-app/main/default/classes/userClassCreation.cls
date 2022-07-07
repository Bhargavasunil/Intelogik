public class userClassCreation {
    public static void insertUser(string userName,string al,string em,string lname){
        profile p= [select id from profile where Name='Standard User'];
        UserRole R = [select id from UserRole WHERE Name='COO'];
        list<user> userList = new List<user>();
         // Create new user with a non-null user role ID 
         user VarU = new user(alias=al,email=em, emailencodingkey='UTF-8',lastName=lname, languagelocalekey='en_US'
                               ,profileid = p.Id,timezonesidkey='America/Los_Angeles', userroleid =R.Id,username=userName);
         userList.add(VarU);
        
         Database.saveresult[] result = database.insert(userList,false); 
    }
   
       
    
}