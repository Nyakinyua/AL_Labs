table 50103 EmployeeInheritance
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
        field(3;"Basic Pay";Decimal)
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