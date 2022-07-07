public class QueueableScenario implements Queueable {
    public void execute(QueueableContext Para){
        Account acct = new Account(Name='QueueableTestAccount',Phone='(040)-555-2112');
        insert acct;
    }
    
}