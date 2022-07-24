program kadai09d;
procedure writestars(n: integer);
var
    i: integer;
begin
    for i := 1 to n do
        write('*');
    writeln();
end;

var
    i: integer;
    n: integer;
begin
    write('n = ');
    read(n);
    
    for i := n downto 1 do
        writestars(i);

    for i := 1 to n do
        writestars(i * 2);
end.