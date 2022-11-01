page 50100 "MBN Bonus Setup"
{
    PageType = Card;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = MNBBonusSetups;
    Caption = 'MB Bonus Setup';
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Bonus Nos."; Rec."Bonus Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies number series what will be used for bonus numbers';
                }
            }
        }

    }
// trigger OnOpenpage()
// Begin
// Reset();
// if not Get() then begin
//     Init{};
//     Insert();
// end;  
// End;

}
