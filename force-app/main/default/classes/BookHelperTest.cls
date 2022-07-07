@isTest
private class BookHelperTest {
  @TestSetUp
    static void setData(){
        List<Book__c> bookListTOInsert = new List<Book__c>();
        Book__c varp = new Book__c();
        varp.Author__c='Spark The Magazine';
        varp.Type__c='Magazines';
        varp.Price_of_the_book__c = 200;
        varp.Name = 'Book1';
        bookListTOInsert.add( varp);
        
        Book__c varq= new Book__c(Author__c='Journal of marketing reserach',
                                  Type__c = 'periodicals',
                                  Price_of_the_book__c = 200,
                                  name='Book2');
        bookListTOInsert.add(varq);
                
        /*Book__c varr= new Book__c(Author__c='Joy Notebook',
                                  Type__c = 'White papers',
                                  Price_of_the_book__c = 45,
                                  name='Joynotebook');
        bookListTOInsert.add(varr);*/
        
        Test.startTest();
        if(!bookListTOInsert.isEmpty()){
            Insert bookListTOInsert;
            system.debug('Inserted Books'+bookListTOInsert);
        }
        Test.stopTest();
    }
    @isTest
    static void methodTest(){
        Book__c bookretrived = [select Id,name,Price_of_the_book__c from Book__c where name =: 'Book1' limit 1];
        system.assert(bookretrived.Price_of_the_book__c==180);
    }
    @isTest
    static void methodTestOne(){
        Book__c varr= new Book__c(Author__c='Joy Notebook',
                                  Type__c = 'White papers',
                                  Price_of_the_book__c = 45,
                                  name='Joynotebook');
        insert varr;
        Book__c bookretrived = [select Id,name,Description__c,Type__c from Book__c Where Type__c ='White papers' limit 1];
        system.assertEquals('There no discounts avaialble for Books you choosen',bookretrived.Description__c);
    }
}