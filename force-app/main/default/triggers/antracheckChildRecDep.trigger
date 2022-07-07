trigger antracheckChildRecDep on Dept__c (before delete) {
            antracheckChildRecDepHandler varObj = new antracheckChildRecDepHandler();
                varObj.checkChilds(Trigger.New);
}