table 123456704 "CSD Seminar Comment Line"
{
    DataClassification = ToBeClassified;
    Caption='Seminar Comment Line'; 
    LookupPageId = "CSD Comment Sheet"; 
    fields
    {
        field(10;"Table Name";Option)
        {
            Caption = 'Table Name';
            OptionMembers = Seminar,"Seminar Registration","Poste d Seminar Registration";
            OptionCaption='Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
        }
        field(20;"Document Line No.";Integer)
        {
            Caption = 'Document No.';
        }
        field(30;"No.";Code[20])
        {
            Caption = 'No.';
            TableRelation = if ("Table Name"=CONST( Seminar)) "CSD Seminar";
        }
        field(40;"Line No.";Integer)
        {
            Caption = 'Line No.';
        }
        field(50;"Date";Date)
        {
            Caption = 'Date';   
        }
        field(60;"Code";Code[10])
        {
            Caption = 'Code';
        }
        field(70;"Comment";Text[80])
        {
            Caption ='Comment';
        }
    }

    keys
    {
         key(PK;"Table Name","Document Line No.","No.","Line No.")
         {}
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}