program kadai07x;
var
    i, j: integer;
    n, p1, p2: integer;
    board: array[1..6, 1..6] of 0..2;
begin
    write('試合数を入力 ');
    read(n);

    for i := 1 to 6 do
        for j := 1 to 6 do
            board[i][j] := 0;

    writeln('試合結果を入力');
    for i := 1 to n do begin
        write('試合', i, ' ');
        read(p1, p2);
        board[p1][p2] := 2;
        board[p2][p1] := 1;
    end;

    writeln('勝敗表を出力');
    for i := 1 to 6 do begin
        write(i, ':');
        for j := 1 to 6 do
            write(' ', board[i][j]);
        writeln();
    end;
end.