table 51402659 RadioShow2
{
    // DataClassification = ToBeClassified;


    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Radio Show Type"; Code[10])
        {
            //TableRelation = "Radio Show Type";
        }
        field(140; "TestReminder"; Code[10])
        {
            // TableRelation = MytestReminder;
        }
        field(3; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Run Time"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Host No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Host Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        /*field(7; "Average Listeners"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Listener Count"
            where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(8; "Audience Share"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Audience Share"
            where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(9; "Advertising Revenue"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount"
            where("Radio Show No." = field("No."), "Date Format" = filter(Advertisement)));
        }
        field(10; "Royalty Cost"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount"
            where("Radio Show No." = field("No."), "Date Format" = filter(Vinyl | CD | MP3))); */

        field(1000; Frequency; Option) { OptionMembers = Hourly,Daily,Weekly,Monthly; }
        field(1010; "PSA Planned Quantity"; Integer) { }
        field(1020; "Ads Planned Quantity"; Integer) { }
        field(1030; "News Required"; Boolean) { }
        field(1040; "News DUration"; Duration) { }
        field(1050; "Sports Required"; Boolean) { }
        field(1060; "Sports DUration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Date Filter"; Date) { FieldClass = FlowField; }

    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name") { }
        // fieldgroup(Brick; "No.", Name, "Audience Share") { }
    }

    /*keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    } */

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}