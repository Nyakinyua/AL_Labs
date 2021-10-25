pageextension 50101 "field om Item Card" extends "Item Card"
{
    layout
    {
        addfirst(InventoryGrp)
        {
            field("Last Counted Date"; "Last Counted Date")
            {
                ApplicationArea = all;
            }
        }
    }
}

pageextension 50102 "Field on User Setup Card" extends "User Setup"
{
    layout
    {
        addafter(Email)
        {
            field("Allow Credit Limit Change"; "Allow Credit Limit Change")
            {
                ApplicationArea = all;
            }
        }
    }
}