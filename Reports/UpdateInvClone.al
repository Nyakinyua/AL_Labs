report 50100 "Update Sales Invoice Clone"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Integer;Integer)
        {
            trigger OnAfterGetRecord()
            begin
                InsertVal.InsertValues(salesInvLine,SalesInvClone);
            end;
        }
        
         
        
    }
    
  
    
 
    
    var
    SalesInvClone: Record "Sales Invoice Clone";
    salesInvLine: Record "Sales Invoice Line";
    InsertVal: Codeunit InsertValCodeunit;


    
}