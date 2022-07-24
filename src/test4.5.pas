program test4;

{$MODE OBJFPC}

uses
  Classes, Sysutils;

function readstream(fnam: UTF8String): UTF8String;
var
  strm: TFileStream;
  n: longint;
  txt: UTF8String;
begin
  txt := '';
  strm := TFileStream.Create(fnam, fmOpenRead or fmShareDenyWrite);
  try
    n := strm.Size;
    SetLength(txt, n);
    strm.Read(txt[1], n);
  finally
    strm.Free;
  end;
  result := txt;
end;

procedure writestream(fnam: UTF8String; txt: UTF8String);
var
  strm: TStringList;
begin
  strm := TStringList.Create;
  try
    strm.Add(txt);
    strm.SaveToFile(fnam, TEncoding.UTF8);
  finally
    strm.Free;
  end;
end;

{
procedure writestream(fnam: UTF8String; txt: UTF8String);
var
  strm: TStreamWriter;
begin
  strm := TStreamWriter.Create(fnam, False, TEncoding.UTF8);
  try
    strm.WriteLine(txt);
  finally
    strm.Free;
  end;
end;
}

var
    ope: char;
    filename, text: UTF8String;
begin
    writeln('r filename: read the file');
    writeln('w filename text: write the text to the file');
    writeln('e: end the loop');
    
    while true do begin
        write('> ');

        readln(ope);
        case ope of
            'r': begin
                readln(filename);
                writeln('read "', filename, '"');
                writeln(readstream(filename));
            end;

            'w': begin
                readln(filename);
                readln(text);
                writeln('Write "', text, '" to "', filename, '"');
                writestream(filename, text);
            end;

            'e': break;

        else writeln(ope);
        end;
    end;
end.