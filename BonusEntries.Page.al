page 50104 "MNB Bonus Entries"
{
    Caption = 'Bonus Entries';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "MNB Bonus Entry";
    Editable = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Entry No.';
                }
                field("Bonus No."; "Bonus No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Bonus No.';
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document No.';
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Item No.';
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Posting Date';
                }
                field("Bonus Amount"; "Bonus Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Bonus Amount';
                    DecimalPlaces = 2;
                }

            }
        }
    }
}