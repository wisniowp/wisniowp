table 50101 "MNB Bonus Header"
{
    Caption = 'Bonus';
    DataClassification = CustomerContent;
    DrillDownPageId = "MNB Bonus List";
    LookupPageId = "MNB Bonus List";
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            trigger OnValidate()
            var
                MNBBonusSetup: Record "MNB Bonus Setup";
                NoSeriesManagement: Codeunit NoSeriesManagement;
            begin
                TestStatusOpen();
                if "No." <> xRec."No." then begin
                    MNBBonusSetup.Get();
                    MNBBonusSetup.TestField("Bonus Nos.");
                    NoSeriesManagement.TestManual(MNBBonusSetup."Bonus Nos.");
                end;
            end;
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(3; "Starting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Starting Date';
        }
        field(4; "Ending Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Ending Date';
        }
        field(5; Status; Enum "MNB Bonus Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Status';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    procedure TestStatusOpen()
    begin
        TestField(Status, Status::Open);
    end;

    trigger OnInsert()
    var
        MNBBonusSetup: Record "MNB Bonus Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then begin
            MNBBonusSetup.Get();
            MNBBonusSetup.TestField("Bonus Nos.");
            NoSeriesManagement.InitSeries(MNBBonusSetup."Bonus Nos.", MNBBonusSetup."Bonus Nos.", WorkDate(), "No.", MNBBonusSetup."Bonus Nos.");
        end;
    end;
}