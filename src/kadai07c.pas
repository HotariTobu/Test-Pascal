program kadai07c;
var
    i, j: integer;
    a: array[1..3] of array[1..4] of integer;
begin
    writeln('3行4列の行列を入力');
    for i := 1 to 3 do begin
        for j := 1 to 4 do
            read(a[i][j]);
    end;
    
    writeln('入力した行列は');
    for i := 1 to 3 do begin
        for j := 1 to 4 do
            write(a[i][j], ' ');
        writeln();
    end;

    writeln('転置行列は');
    for i := 1 to 4 do begin
        for j := 1 to 3 do
            write(a[j][i], ' ');
        writeln();
    end;
end.