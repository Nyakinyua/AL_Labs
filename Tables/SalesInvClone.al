table 50100 "Sales Invoice Clone"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Document Type"; Option)
        {
            OptionMembers = "Invoice","Credit Memo";
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header"."Document Type" where("No." = field("Sell To Customer No")));

        }
        field(3; "Sell To Customer No"; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer."No." where("No." = field("Sell To Customer No")));
        }
        field(4; "Amount Including VAT(LCY)"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Sales Invoice Line"."Amount Including VAT" where("Document No." = field("No.")));
        }
        field(5; "Entry No."; integer)
        {
            AutoIncrement = true;
        }
        field(6;"Date Filter";Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key("Entry No."; "Entry No.")
        {
            Clustered = true;
        }
        
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}