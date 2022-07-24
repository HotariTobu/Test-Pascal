program kadai06b;
var
    i: integer;
    a, b, d: array[1..3] of integer;
    sum: real;
begin
    write('A(x, y, z) = ');
    readln(a[1], a[2], a[3]);
    write('B(x, y, z) = ');
    readln(b[1], b[2], b[3]);

    for i := 1 to 3 do
        d[i] := a[i] - b[i];

    sum := 0;
    for i := 1 to 3 do
        sum := sum + d[i] * d[i];

    writeln('AB = ', sqrt(sum):8:3);
end.