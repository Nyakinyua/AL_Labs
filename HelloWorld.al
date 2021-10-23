// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

tableextension 50101 "My Item Field" extends Item
{
    fields
    {
        field(50101; "Last Counted Date"; Date)
        {
            Caption = 'Last Count Date';
            DataClassification = ToBeClassified;
        }
    }
}

tableextension 50102 "New Item Field" extends "User Setup"
{
    fields
    {
        field(50102; "Allow Credit Limit Change"; Boolean)
        {
            Caption = 'Allow Credit Limit Change';
            DataClassification = ToBeClassified;
        }
    }
}