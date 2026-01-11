trigger AccountTriggerHandler on Account (before insert) {

    switch on  Trigger.operationType {
        when  BEFORE_INSERT{
            AccountHandlerClass.nameInUpperCase(Trigger.new);
        }
        
    }

}