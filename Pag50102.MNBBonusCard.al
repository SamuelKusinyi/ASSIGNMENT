page 50102 "MNB Bonus Card"
{
    PageType = Document;
    Caption = 'Bonus Card';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Header";


    layout
    {
        area(Content)
        {
            part(Lines; "MNB Bonus Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Bonus Nummber';

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
                    ToolTip = 'Specifies the bonus status.';
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
                caption = 'Customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
                ToolTip = 'Opens Customer Card';

            }
        }
    }


}
