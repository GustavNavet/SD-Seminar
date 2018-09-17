pageextension 123456701 "Resource List Ext" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            { }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            { }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = Format(Type::Machine));
        FilterGroup(0);

    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}