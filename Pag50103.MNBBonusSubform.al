page 50103 "MNB Bonus Subform"
{
    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = "MNB Bonus Line";

    layout
    {
        area(content)
        {
            repeater(Lines)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of bonus assigned.';

                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number for which bonus assigned.';

                }
                field("Bonus Perc."; Rec."Bonus Perc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus percentage';
                }
            }
        }
    }
}
