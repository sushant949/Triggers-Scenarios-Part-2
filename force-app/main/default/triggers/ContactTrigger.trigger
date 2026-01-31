trigger ContactTrigger on Contact (before insert,before update) {

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            ContactHandlerClass.lastNameMandatory(Trigger.new);
            ContactHandlerClass.showContactError(Trigger.new);
            ContactHandlerClass.updateDescription(Trigger.new);
            
        }

        when BEFORE_UPDATE{
            
            ContactHandlerClass.showErrorWhenPhoneUpdated(Trigger.new);
            ContactHandlerClass.updateDescriptionOfContact(Trigger.new);
        }
    }

}