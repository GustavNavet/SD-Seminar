pageextension 123456705 MyExtension extends "Source Code Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Cost Accounting")
        {
            group(SeminarGroup)
            {
               Caption = 'Seminar';
               field("CSD Seminar";"CSD Seminar"){
                   caption ='Seminar';
               }
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}