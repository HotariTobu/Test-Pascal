program kadai07d;
var
    i, j, l: integer;
    a: array[1..4] of array[1..2] of integer;
    b: array[1..2] of array[1..3] of integer;
    c: array[1..4] of array[1..3] of integer;
begin
    writeln('4行2列の行列Aを入力');
    for i := 1 to 4 do
        for j := 1 to 2 do
            read(a[i][j]);

    writeln('2行3列の行列Bを入力');
    for i := 1 to 2 do
        for j := 1 to 3 do
            read(b[i][j]);

    writeln('行列Aと行列Bの積は');
    
    for i := 1 to 4 do
        for j := 1 to 3 do
            c[i][j] := 0;

    for i := 1 to 4 do
        for j := 1 to 2 do
            for l := 1 to 3 do
                c[i][l] := c[i][l] + a[i][j] * b[j][l];

    for i := 1 to 4 do begin
        for j := 1 to 3 do
            write(c[i][j]:2, ' ');
        writeln();
    end;
end.