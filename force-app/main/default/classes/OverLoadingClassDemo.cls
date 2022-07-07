/**/
public class OverLoadingClassDemo {
   //method overloading
   
    public static void methodDisplay()
    {
        system.debug('Display');
    }
    public static void methodDisplay(integer A,integer B)
    {
        integer c;
        c=A+B;
        system.debug('Value of c'+c);
    }
}