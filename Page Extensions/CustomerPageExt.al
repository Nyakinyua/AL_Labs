pageextension 50100 MyCustomerExt extends "Customer Card"
{
    layout
    {
        
        modify("Credit Limit (LCY)")
        {
            trigger OnBeforeValidate();
            var
                Publisher: Codeunit MyPublishers;
                Subscriber: Codeunit MySubscribers;
            begin
                // Bind the event to the MySubscribers codeunit
                BindSubscription(Subscriber);

                // Raise the event
                Publisher.OnCreditLimitChanged();
            end;
        }

    }


}