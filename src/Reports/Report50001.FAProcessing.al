report 50001 "Fixed Asset Processing"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            trigger OnAfterGetRecord()

            begin
                if "Fixed Asset".Blocked then begin
                    Clear("Fixed Asset".Category);
                    "Fixed Asset".Modify();
                end;
            end;

        }
    }




    var
        myInt: Integer;
}