//integer.valueof()
//the method works when you try to convert a numeric string to a integer number.
public class strToIntConversioinexample {
    public static void strToIntmethod(string mathmarks,string englishMarks){
        Integer TotalMarks;
        TotalMarks= integer.valueOf(mathmarks)+integer.valueOf(englishMarks);
        system.debug('Total Marks'+TotalMarks);
        
    }
}