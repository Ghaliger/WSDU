pageextension 50000 FAnewClass extends "Fixed Asset Card"
{
    layout
    {
        addlast(General)
        {
            field(Category; Category) { }
        }
    }


    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}