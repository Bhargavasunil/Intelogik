public class ExceptionExample1 {
    static Integer z;
    Public static void Method(Integer i,Integer y){
    try{
        z =y/i;
  }
CATCH(MathException e){
    system.debug(e);
  }
        system.debug('This is continuation of flow' );
    }
}