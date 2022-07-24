program test5;
var
    s: String;
    ss: ShortString;
    as: AnsiString;
    us: UnicodeString;
    u8s: UTF8String;
    {u16s: UTF16String;}
    ws: WideString;
begin
    readln(s);
    readln(ss);
    readln(as);
    readln(us);
    readln(u8s);
    {readln(u16s);}
    readln(ws);

    writeln();
    writeln(s);
    writeln(ss);
    writeln(as);
    writeln(us);
    writeln(u8s);
    {writeln(u16s);}
    writeln(ws);
end.