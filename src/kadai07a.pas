program kadai07a;
var
    i, j: integer;
    a, b: integer;
begin
    write('a = ');
    readln(a);
    write('b = ');
    readln(b);

    for i := a to b do begin
        write(i, 'の段 ');
        for j := 1 to 9 do
            write(i * j, ' ');
        writeln();
    end;
end.