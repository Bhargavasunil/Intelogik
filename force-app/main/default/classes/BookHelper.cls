public with sharing class BookHelper {
    public static void applyDiscount(Book__c[] bookList){
        for(Book__c varBox:bookList){
            If(varBox.Type__c == 'Magazines' &&  varBox.Price_of_the_book__c > 100){
                varBox.Price_of_the_book__c *= 0.9;
            }
            else if (varBox.Type__c == 'Periodicals'){
                varBox.Price_of_the_book__c *= 0.4;
            }
            else if(varBox.Type__c=='White Papers' || varBox.Type__c=='Books'){
                varBox.Description__c='There no discounts avaialble for Books you choosen';
            }
        }
    }
}