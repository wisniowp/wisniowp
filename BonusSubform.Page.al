page 50103 "MNB Bonus Subform"
{
    PageType = ListPart;
    SourceTable = "MNB Bonus Line";
    Caption = 'Lines';
    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Type)
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies type of the bonus assigned.';
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies item number for which bonus is assigned.';
                }
                field("Bonus Perc."; "Bonus Perc.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies bonus percent.';
                }
            }
        }
    }
}