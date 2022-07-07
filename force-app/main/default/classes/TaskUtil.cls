/*The main task of this method is to return a priority string value based on the given lead state. The method validates the state first and returns 
null if the state is invalid. If the state is CA, the method returns 'High'; otherwise, it returns 'Normal' for any other state value.*/

public class TaskUtil  {
    public static string getTaskPriority(String leadState){
         
        if(string.isBlank(leadState) || leadState.length()>2){
            return Null;
         }
        string taskPriority;
        if(leadState== 'CA'){
            taskPriority='High';
        } else{
            taskPriority='Normal';
        }
          return taskPriority;
    }
}