codeunit 50101 MySubscribers
{
    //Set the event subscribers to manual binding;
    EventSubscriberInstance = Manual;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"MyPublishers", 'OnCreditLimitChanged', '', true, true)]
    procedure CheckAllowedCreditLimitChange();
    var UserSetup : record "User Setup";
    begin
       UserSetup.SetRange("Allow Credit Limit Change",false);
       UserSetup.FindFirst();
       Error('Can''t modify this field in the address');
    end;
}