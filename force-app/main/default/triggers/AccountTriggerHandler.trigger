trigger AccountTriggerHandler on Account (before insert,before update) {

    switch on  Trigger.operationType {
        when  BEFORE_INSERT{
            AccountHandlerClass.nameInUpperCase(Trigger.new);
            AccountHandlerClass.setIndustryToIt(Trigger.new);
        }
        when BEFORE_UPDATE{
            AccountHandlerClass.phoneBlankError(Trigger.new);
        }
    }

}