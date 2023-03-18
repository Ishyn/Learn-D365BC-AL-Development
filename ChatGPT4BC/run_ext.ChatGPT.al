pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here    
    }
    actions
    {
        // Add changes to page actions here
        addlast(navigation)
        {
            action("ChatGPT")
            {
                ApplicationArea = All;
                // "RunObject" sets the "Chat GPT" page as the object 
                // that will run when the action is activated.
                //trigger OnAction()
                //begin
                //    RunObject = page "Chat GPT";
                // end;
                trigger Onaction()
                begin
                    Page.RunModal(50112); // Run "Chat GPT" page in modal mode
                end;

            }
        }
    }

    var
        myInt: Integer;
}