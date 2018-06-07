page 123456707 "Seminar Comment List"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption = 'Seminar Comment List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    
                }
                field(Code;Code)
                {
                    Visible = false;
                }
                field(Comment;Comment)
                {

                }
            }
        }
    }
}