@isTest
public class TaskUtilTest {
    static testmethod void testTaskPriority(){
        string testpriority = TaskUtil.getTaskPriority('NY');
        system.assertEquals('Normal',testpriority);
    }
    
    static testmethod void testTaskPriority1(){
        string testpriority1 = TaskUtil.getTaskPriority('');
        system.assertEquals('',testpriority1);
    }
    
    @istest static void testTaskPriority2(){
        string testpriority = TaskUtil.getTaskPriority('CA');
        system.assertEquals('High',testpriority);
    }
}