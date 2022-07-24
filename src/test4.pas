program test4;

{$MODE OBJFPC}

uses
  Classes, Sysutils;

function readstream(fnam: string): string;
var
  strm: TFileStream;
  n: longint;
  txt: string;
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

procedure writestream(fnam: string; txt: string);
var
  strm: TFileStream;
  n: longint;
begin
  strm := TFileStream.Create(fnam, fmCreate);
  n := Length(txt);
  try
    strm.Position := 0;
    strm.Write(txt[1], n);
  finally
    strm.Free;
  end;
end;

var
    ope: char;
    filename, text: string;
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