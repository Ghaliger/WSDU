pageextension 51402920 MyVoucherPageExtension extends "General Journal"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Post)
        {
            action(PrintJournalVoucher)
            {
                Caption = 'Print Journal Voucher';
                Promoted = true;
                PromotedCategory = Report;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    MyGenJournalLine: Record "Gen. Journal Line";
                begin
                    MyGenJournalLine.SetRange(MyGenJournalLine."Journal Template Name", Rec."Journal Template Name");
                    MyGenJournalLine.SetRange("Journal Batch Name", Rec."Journal Batch Name");
                    Report.Run(Report::MyReportVoucherReport, true, true, MyGenJournalLine);
                end;
            }
        }
    }

    var
        myInt: Integer;
}