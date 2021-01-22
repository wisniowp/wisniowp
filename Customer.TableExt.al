tableextension 50100 "MNB Customer" extends Customer
{
    fields
    {
        field(50100; "MNB Bonuses"; Integer)
        {
            Caption = 'Customer Bonuses';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = count("MNB Bonus Header" where("Customer No." = field("No.")));

        }
    }

    var
        BonusExistsErr: Label 'You can not delete Customer %1 because there is at least one Bonus assigned.', Comment = '%1 = Customer';

    trigger OnBeforeDelete()
    var
        MNBBonusHeader: Record "MNB Bonus Header";
    begin
        MNBBonusHeader.SetRange("Customer No.", "No.");
        if not MNBBonusHeader.IsEmpty() then
            Error(BonusExistsErr, "No.");
    end;
}