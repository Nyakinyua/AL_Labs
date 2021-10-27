codeunit 50103 CalculateAmounts1
{
    trigger OnRun()
    begin
        
    end;

    procedure ComputeAmounts(SalesInvClone: Record "Sales Invoice Clone";"No.":code[20]):Decimal
    begin
        SalesInvClone.Reset();
        SalesInvClone.SetRange("No.","No.");
        SalesInvClone.CalcSums("Amount Including VAT(LCY)");
        exit(SalesInvClone."Amount Including VAT(LCY)");
    end;
    
    var
        myInt: Integer;
}