codeunit 50102 InsertValCodeunit
{
    trigger OnRun()
    begin

    end;

    procedure InsertValues(SalesInvLine: record "Sales Invoice Line"; MyTable: record L2Table)
    begin
        repeat 
        MyTable.Init();
        MyTable."No." := SalesInvLine."Document No.";
        MyTable."Sell To Customer No" := SalesInvLine."Sell-to Customer No.";
        MyTable.Insert();
        until SalesInvLine.Next = 0;
    end;


}
