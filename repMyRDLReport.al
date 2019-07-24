pageextension 50123 MyExtension extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Report.Run(Report::MyRdlReport);
    end;
}
report 50123 MyRdlReport
{
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRdlReport.rdl';
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {

            }
        }
    }
}