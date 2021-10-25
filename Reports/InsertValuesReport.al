report 50100 InsertDataReport
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Insert Data Report';
    ProcessingOnly = true;

    dataset
    {
        dataitem("Sales Invoice Line"; "Sales Invoice Line")
        {
            trigger OnAfterGetRecord()
            var
                DataTransfer: Codeunit InsertValCodeunit;
                MyTable : Record L2Table;
            begin
                DataTransfer.InsertValues("Sales Invoice Line",MyTable);
            end;

        }
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