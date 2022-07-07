public class student_wrapper {
    public string course;
    public integer duration;
    public student std;
    //constructor
    public student_wrapper(){
       course='Salesforce';
       duration=12;
        student sn = new student();
        sn.Name='sunil';
        sn.age=27;
        system.debug('course value'+course);
        system.debug('Course Duration'+duration);
        system.debug('student Name' +sn.Name);
        system.debug('student age'+sn.age);
    }
    //wrapperclass
    public class student{
        public string Name;
        public integer age;
    }
}