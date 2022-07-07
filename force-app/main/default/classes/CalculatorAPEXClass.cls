public class CalculatorAPEXClass{
               //declare a class level variables
        
                    integer VarSum;
                    integer VarMultiplication;
              //Declare a addition function 

                       public  integer MakeAddition(integer VarNumA,integer VarNumB){
                                               
                             VarSum=VarNumA+VarNumB;
                             return VarSum;
                       }
                         //declare multiplication function
                   
                                   public  void MakeMultiplication(integer VarNumC,integer VarNumD){
                                                 VarMultiplication=VarNumC*VarNumD;
                                                     system.debug('The answer='+VarMultiplication);
                                          }
                       }