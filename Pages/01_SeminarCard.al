page 123456701 "Seminar Card"
{
    PageType = Card;
    SourceTable = Seminar;
    Caption = 'Seminar Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {

                }
                field("Search Name"; "Search Name")
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
                field(Blocked; Blocked)
                {

                }
                field("Last Date Modified"; "Last Date Modified")
                {

                }
            }
            group(Invoicing)
            {
                field("Gen. Product Posting Group"; "Gen. Product Posting Group")
                {

                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }
        
    }
    Actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                { 
                    RunObject=page "Seminar Comment Sheet"; 
                    RunPageLink = "Table Name"= const(Seminar), 
                    "No."=field("No."); 
                    Image = Comment; 
                    Promoted = true; 
                    PromotedIsBig = true; 
                    PromotedOnly = true; 
                }
            } 
        }
    }
}