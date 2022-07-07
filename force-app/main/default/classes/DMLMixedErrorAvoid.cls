public class DMLMixedErrorAvoid {
    public static void method1(){
        //inserting non-setup object
          Account acct = new Account(Name='Acme');
           insert acct;
    }
}