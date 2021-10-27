table 50102 EmployeeBasicPay
{
    DataClassification = ToBeClassified;
         fields
    {
        field(1;"No."; Code[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;Name; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(3;"Document Type";Option)
       {
           DataClassification = ToBeClassified;
           OptionMembers = "Invoice","Credit Memo";
       }

        field(4;MyField; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
    }
    
    keys
    {
        key("No.";"No.")
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