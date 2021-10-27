page 50101 "sales Invoice Cln List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Invoice Clone";

    layout
    {
        area(Content)
        {
            repeater(Group)
        
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }

                field("Document Type"; "Document Type")
                {
                    ApplicationArea = All;

                }

                field("Sell To Customer No"; "Sell To Customer No")
                {
                    ApplicationArea = All;

                }

                field("Amount Including VAT(LCY)"; "Amount Including VAT(LCY)")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

}