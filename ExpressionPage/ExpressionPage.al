page 50100 ExpressionPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Logical Expression Page';

    layout
    {
        area(Content)
        {
            group(input)
            {
                Caption = 'Get the input from the user';
                field(Number1; Number1)
                {
                    ApplicationArea = All;

                }
                field(Number2; Number2)
                {
                    ApplicationArea = All;

                }
            }
            group(output)
            {
                Caption = 'Tada, Your output is here';
                field(Res; Res)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Run)
            {
                ApplicationArea = All;
                Caption = 'Run';
                Image = ExecuteBatch;
                trigger OnAction()
                begin
                    Res := Number1 < Number2
                end;
            }
            action(Quit)
            {
                ApplicationArea = All;
                Caption = 'Exit';
                Image = ExecuteBatch;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Number1: Integer;
        Number2: Integer;
        Res: Boolean;
}

