pageextension 123456700 "Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resourse Type";"CSD_Resourse Type")
            {

            }
            field("CSD_Qty. per Day"; "CSD_Qty. per Day") 
            {

            }
        }
        addafter("Personal Data")
        {
            group(Room)
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD_Maximum Participants";"CSD_Maximum Participants")
                {
                    
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        ShowMaxField :=(Type=Type::Machine);
        CurrPage.Update(false);
    end;
    
    var
        [InDataSet]
        ShowMaxField : Boolean;
}