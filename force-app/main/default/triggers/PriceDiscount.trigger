trigger PriceDiscount on Property__c (before insert) {
                PropertyClass.DiscountonRowHouse(Trigger.New);
}