program kadai05b;
var
    n: integer;
begin
    write('n = ');
    readln(n);

    while n <> 1 do begin
        if n mod 2 = 0 then n := n div 2
        else n := (n - 1) div 2;
        write(n, ' ');
    end; 
end.