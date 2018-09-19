codeunit 123456732 "CSD Seminar Journal Lin"
{
    TableNo = "CSD Seminar Journal Line";
    trigger OnRun();
    begin
    end;

    var
        SeminarJnlLine: Record "CSD Seminar Journal Line";
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
        SeminarRegister: Record "CSD Seminar Register";
        SeminarJnlCheckLine: Codeunit "CSD Seminar Jnl. -Check Line";
        NextEntryNo: Integer;

    procedure RunWithCheck(var SeminarJnLine2: Record "CSD Seminar Journal Line");
    var
        myInt: Integer;
    begin
        with SeminarJnLine2 do
        begin
            SeminarJnlLine:= SeminarJnLine2;
            code();
            SeminarJnLine2:=SeminarJnlLine;
        end;
    end;
    procedure code();
    var
        myInt : Integer;
    begin
        if NextEntryNo = 0 then begin
            SeminarLedgerEntry.LockTable;
            if SeminarLedgerEntry.findfirst then
                NextEntryNo := SeminarLedgerEntry."Entry No.";
            NextEntryNo := NextEntryNo + 1;
            if SeminarJnlLine."Document Date" = 0D then
                SeminarJnlLine."Document Date" := SeminarJnlLine."Posting Date";
        end;
        
    end;   
}