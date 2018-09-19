page 123456701 "Seminar Card"
{
    PageType = Card;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar Card';
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name) { }
                field("Serch Name"; "Serch Name") { }
                field("Semniar Duration"; "Semniar Duration") { }
                field("Minimum Participants"; "Minimum Participants") { }
                field("Maximum Participants"; "Maximum Participants") { }
                field(Blocked; Blocked) { }
                field("Last Modify Date"; "Last Modify Date") { }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group") { }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group") { }
                field("Seminar Price"; "Seminar Price") { }
            }
        }
        area(FactBoxes)
        {
            systempart("Notes"; Notes)
            {

            }
            systempart("Links"; Links)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject=page "CSD Comment Sheet";
                    RunPageLink = "Table Name" =const(Seminar),"No."=field("No."); 
                    Image = Comment;
                }
            }
        }
    }
}