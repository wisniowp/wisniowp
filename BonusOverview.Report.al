report 50100 "MNB Bonus Overview"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Bonus Overview';
    dataset
    {
        dataitem("MNB Bonus Header"; "MNB Bonus Header")
        {
            RequestFilterFields = "Customer No.", "No.";
            column("No_"; "No.")
            {

            }
            column("Customer_No"; "Customer No.")
            {

            }
            column("Starting_Date"; Format("Starting Date", 0))
            {

            }
            column("Ending_Date"; Format("Starting Date", 0))
            {

            }
            column(BonusNoCaptionLbl; BonusNoCaptionLbl)
            {
            }
            column(CustomerNoCaptionLbl; CustomerNoCaptionLbl)
            {
            }
            column(PostingDateCaptionLbl; PostingDateCaptionLbl)
            {
            }
            column(DocumentNoCaptionLbl; DocumentNoCaptionLbl)
            {
            }
            column(BonusAmountCaptionLbl; BonusAmountCaptionLbl)
            {
            }
            column(ItemNoCaptionLbl; ItemNoCaptionLbl)
            {
            }
            column(StartingDateCaptionLbl; StartingDateCaptionLbl)
            {
            }
            column(EndingDateCaptionLbl; EndingDateCaptionLbl)
            {
            }
            dataitem("MNB Bonus Entry"; "MNB Bonus Entry")
            {
                DataItemLink = "Bonus No." = FIELD("No.");
                RequestFilterFields = "Posting Date";
                column(Document_No_; "Document No.")
                {
                }
                column(Posting_Date; Format("Posting Date", 0))
                {
                }
            }
        }
    }
    var
        BonusNoCaptionLbl: Label 'Bonus No.';
        CustomerNoCaptionLbl: Label 'Customer No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        DocumentNoCaptionLbl: Label 'Document No.';
        BonusAmountCaptionLbl: Label 'Amount';
        ItemNoCaptionLbl: Label 'Item No.';
        StartingDateCaptionLbl: Label 'Starting Date';
        EndingDateCaptionLbl: Label 'Ending Date';
}