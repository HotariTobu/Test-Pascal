program test6;

{$codepage utf8}
{$mode objfpc}

function CharArrayToString(const str: array of char): string;
var
    buffer: WideString;
begin
    buffer := str;
    Result := buffer;
end;

var
    s: String;
    ss: ShortString;
    ans: AnsiString;
    us: UnicodeString;
    u8s: UTF8String;
    {u16s: UTF16String;}
    ws: WideString;

    a: array [0..6000] of char;
    w: array [0..6000] of wideChar;
begin
    readln(s);
    readln(ss);
    readln(ans);
    readln(us);
    readln(u8s);
    {readln(u16s);}
    readln(ws);

    writeln();

    writeln(s);
    writeln(ss);
    writeln(ans);
    writeln(us);
    writeln(u8s);
    {writeln(u16s);}
    writeln(ws);
    
    writeln();

    a := s; writeln(a);
    a := ss; writeln(a);
    a := ans; writeln(a);
    a := us; writeln(a);
    a := u8s; writeln(a);
    a := ws; writeln(a);
    
    writeln();

    a := s; s := CharArrayToString(a); writeln(s);
    //a := ss; ss := shortstring(a); writeln(ss);
    a := ans; ans := a; writeln(ans);
    a := us; us := a; writeln(us);
    a := u8s; u8s := a; writeln(u8s);
    a := ws; ws := a; writeln(ws);
    
    writeln();

    //w := pwidechar(s);   writeln(string(w));
    //w := pwidechar(ss);  writeln(string(w));
    w := pwidechar(ans); writeln(string(w));
    w := pwidechar(us);  writeln(string(w));
    w := pwidechar(u8s); writeln(string(w));
    w := pwidechar(ws);  writeln(string(w));
end.