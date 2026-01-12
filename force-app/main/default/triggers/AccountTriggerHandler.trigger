trigger AccountTriggerHandler on Account (before insert,before update) {

    switch on  Trigger.operationType {
        when  BEFORE_INSERT{
            AccountHandlerClass.nameInUpperCase(Trigger.new);
            AccountHandlerClass.setIndustryToIt(Trigger.new);
            AccountHandlerClass.setAccountRatingWarm(Trigger.new);
            AccountHandlerClass.setBillingState(Trigger.new);
            AccountHandlerClass.setAccountRevenue(Trigger.new);
        }
        when BEFORE_UPDATE{
            AccountHandlerClass.phoneBlankError(Trigger.new);
            AccountHandlerClass.setDescriptionValue(Trigger.new,Trigger.oldMap);
            AccountHandlerClass.updateRating(Trigger.new,Trigger.oldMap);
        }
    }

}