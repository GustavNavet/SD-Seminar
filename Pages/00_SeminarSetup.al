page 123456700 "CSD Seminar Setup"
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    InsertAllowed = False;
    DeleteAllowed = False;
    UsageCategory = Administration;
    Caption = 'Seminar Setup';
    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {

                }
                field("Seminar Registartion Nos."; "Seminar Registartion Nos.")
                {

                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                { 

                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;   
    end;
    var
        myInt: Integer;
}