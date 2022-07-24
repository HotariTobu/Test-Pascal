program test10;

Windows, CommDlg

{$MODE OBJFPC}
{$codepage utf8}

uses
  Classes, Sysutils;

function GetStream(const FileName: string): TStream;
begin
  Result := TFileStream.Create(FileName, fmOpenRead);
end;

var
    path: string;
    stream: TStream;
    content: string;
    n: longint;
begin
    readln(path);
    try
        stream := GetStream(path);
        writeln('size: ', stream.size);
        //n := stream.Size;
        //SetLength(content, n);
        //stream.Read(content[1], n);
    finally
        stream.Free;
    end;
    
    //writeln(content);
end.