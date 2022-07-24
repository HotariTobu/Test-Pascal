program kadai05y;
var
    i, j: integer;
    n, n2: integer;
begin
    write('n = ');
    readln(n);

    n2 := n * n;
    for i := 0 to n2 do write(i mod 10);
    writeln();

    for i := 1 to n do begin
        write(i);
        for j := 1 to n2 do
            if j mod i = 0 then
                write('*')
            else
                write(' ');
        writeln();
    end;
        
end.