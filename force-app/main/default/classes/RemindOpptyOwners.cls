global class RemindOpptyOwners implements schedulable{
    global  void  execute(Schedulablecontext BC ){
         //make a query to fetch the open opportunities and should have the closed on today date 
         List<opportunity> OppList =new List<opportunity>();
                        List<task> taskList = new List<task>();

         OppList=[SELECT id, Name,CloseDate
                              FROM Opportunity
                                   Where IsClosed =False AND CloseDate = today];
        for(Opportunity opp: OppList){
                 Task newTask = new Task(Description = 'Task With Reminder',
                        Priority = 'Normal',
                           Status = 'Inbound Email',
                               Subject = 'Other',
                                   IsReminderSet = true,
                                        ReminderDateTime = System.now()+1);
                                           insert newTask;                                   

                    
        }
    }
}