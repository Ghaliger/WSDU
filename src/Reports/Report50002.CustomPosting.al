report 50002 "Custom Posting Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            trigger OnAfterGetRecord()
            var
                salesPost: Codeunit "Sales-Post (Yes/No)";
            begin
                salesPost.Run("Sales Header");
            end;
        }
    }




    var
        myInt: Integer;
}