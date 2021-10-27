codeunit 50101 MySubscribers
{
    //Set the event subscribers to manual binding;
    EventSubscriberInstance = Manual;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"MyPublishers", 'OnCreditLimitChanged', '', true, true)]
    procedure CheckAllowedCreditLimitChange();
    var 
    UserSetup : record "User Setup";
    ErrUser: Label 'User %1 is not allowed to modify this field';

    begin
        if UserSetup.Get(UserId) and  GuiAllowed then
            if not UserSetup."Allow Credit Limit Change" then Error(ErrUser,UserId);      
       
    end;
}