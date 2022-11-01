page 50101 "MNB BonusList"
{
    ApplicationArea = All;
    Caption = 'MNB  BonusList';
    PageType = List;
    SourceTable = "MNB Bonus Header";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "MNB Bonus Card";

    layout
    {
        area(content)
        {
            repeater(Control)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus number.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Customer number.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Starting Date.';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Ending Date.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus Status.';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(CustomerCard)
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
                Tooltip = 'Opens Customer card';
            }
        }
    }


}
