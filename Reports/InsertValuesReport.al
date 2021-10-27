report 50100 InsertDataReport
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Insert Data Report';
    ProcessingOnly = true;

    dataset
    {
        
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}