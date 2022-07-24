program kadai0;
var
    i, j: integer;
    vs: array[1..5] of integer;
begin
    write('整数を入力 ');
    for i := 1 to 5 do
        read(vs[i]);
    
    writeln('入力完了　ここから絵を描きます');
    for i := 1 to 5 do begin
        for j := 1 to vs[i] do
            write('*');
        writeln();
    end;
end.