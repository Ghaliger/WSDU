pageextension 50002 SalesHeaderPosting extends "Sales Invoice"
{


    actions
    {
        addlast(processing)
        {
            action(CustomPosting)
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                // RunObject = report "Custom Posting Report";
                // RunPageOnRec = true; //Ensure that it runs on current rec.

                trigger OnAction()
                var
                    salesHeader: Record "Sales Header";
                begin
                    CurrPage.SetSelectionFilter(salesHeader);
                    Report.Run(Report::"Custom Posting Report", true, true, salesHeader);
                end;
            }
        }

    }

    var
        myInt: Integer;
}