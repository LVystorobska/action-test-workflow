public with sharing class TestController {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getAllOpps() {
        return [SELECT Id, Name ,StageName, CloseDate ,Type ,Probability,Account.Name from Opportunity];
    }

}