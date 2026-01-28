trigger ContactTrigger on Contact (before insert) {

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            ContactHandlerClass.lastNameMandatory(Trigger.new);
            ContactHandlerClass.showContactError(Trigger.new);
            ContactHandlerClass.updateDescription(Trigger.new);
            
        }
    }

}