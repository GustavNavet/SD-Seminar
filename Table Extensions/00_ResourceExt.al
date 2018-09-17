tableextension 123456700 "CSD Resource Ext" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        // Add changes to table fields here
        field(123456701; "CSD Resource Type"; Option)
        {
            Caption = 'Rerouce Type';
            OptionMembers = Internal, External;
            OptionCaption = 'Internal,External';
        }
        field(123456702; "CSD Maximum Participants"; integer)
        {
            Caption = 'Maximum Participants';

        }
        field(123456703; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }

    var
        myInt: Integer;
}