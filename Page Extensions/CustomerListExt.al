pageextension 50103 CustomerListExt extends "Customer List"
{
    layout
    {
        modify("No.")
        {
            StyleExpr = MyStyleExpr;
        }
        modify(Name)
        {
            StyleExpr = MyStyleExpr;
        }
        modify("Location Code")
        {
            StyleExpr = MyStyleExpr;
        }
        modify(Contact)
        {
            StyleExpr = MyStyleExpr;
        }
    }

    var
        MyStyleExpr: Text;

    trigger OnAfterGetRecord()
    begin
        //MyStyleExpr := 'Favourable';
        if ("No." = '01121212') then MyStyleExpr := 'AttentionAccent';
        if "Balance (LCY)" >= 0 then MyStyleExpr := 'Unfavourable';
        if "Balance (LCY)" <= 0 then MyStyleExpr := 'Standard';
    end;

}
