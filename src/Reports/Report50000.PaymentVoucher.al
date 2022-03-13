report 50000 MyReportVoucherReport
{
    UsageCategory = Administration;
    Caption = 'Journal Voucher';
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Voucher.rdl';

    dataset
    {
        dataitem("Gen. Journal Line"; "Gen. Journal Line")
        {
            RequestFilterFields = "Journal Template Name", "Journal Batch Name";
            column(Document_No_; "Document No.") { }
            column(Posting_Date; "Posting Date") { }

            column(Account_Type; "Account Type")
            {

            }
            column(Account_No_; "Account No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Amount; Amount)
            {

            }
            column(Bal__Account_Type; "Bal. Account Type")
            {

            }
            column(Bal__Account_No_; "Bal. Account No.") { }
            //column(VoucherType; VoucherType) { }

            dataitem("Company Information"; "Company Information")
            {
                column(CompanyName; Name) { }
                column(CompanyPicture; Picture) { }
            }

        }

    }

    // labels {
    //         labelName = 'Batteries Which Last';
    //     }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        VoucherType: Label 'Journal Voucher';
}