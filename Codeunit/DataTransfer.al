codeunit 50102 InsertValCodeunit
{
    trigger OnRun()
    begin

    end;

    procedure InsertValues(SalesInvLine: record "Sales Invoice Line"; MyTable: record "Sales Invoice Clone")
    begin
       
        MyTable.Init();
        MyTable."Entry No." := 0;
        MyTable."No." := SalesInvLine."Document No.";
        MyTable."Sell To Customer No" := SalesInvLine."Sell-to Customer No.";
        MyTable.Insert();
        
    end;


}
