public class InsertBook {

	public Book__c coll;

	public void insertBookmethod() {
		coll = [select id,Author__c,Name from Book__c where id =: ApexPages.currentPage().getParameters().get('id')];
	}
	public Book__c getcoll() {
		return coll;
	}
	public PageReference save() {
		upsert coll;
		PageReference pref = new ApexPages.StandardController(coll).view();
		return pref;
	}
}