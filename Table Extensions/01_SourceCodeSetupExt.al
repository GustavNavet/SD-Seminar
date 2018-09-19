tableextension 123456701 "Source Code Setup Ext" extends "Source Code Setup"
{
    fields
    {
        // Add changes to table fields here
        field(123456700;"CSD Seminar";Code[10])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
            DataClassification = ToBeClassified;
        }
    }
    
    var
        myInt : Integer;
}