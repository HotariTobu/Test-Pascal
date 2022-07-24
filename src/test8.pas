program test8;

{$codepage utf8}
{$mode objfpc}

//uses SysUtils, Windows;
uses Dialogs;

var
    Struct: TOpenFileName;
    FileNameBuffer: array [0..6000] of char;
    re: boolean;
begin
    {FillChar(Struct, SizeOf(Struct), 0);
    Struct.lStructSize := SizeOf(Struct);
    
    Struct.lpstrFile := @FileNameBuffer;
    Struct.nMaxFile := SizeOf(FileNameBuffer);
    Struct.lpstrTitle := 'Open file';
    Struct.Flags := OFN_NOCHANGEDIR or OFN_HIDEREADONLY or OFN_FILEMUSTEXIST;
    re := GetOpenFileName(@Struct);

    writeln(FileNameBuffer);
    writeln(re);}
    with TOpenDialog.Create(nil) do begin
        try
            Execute;
        finally
            Free;
        end;
    end;    
end.