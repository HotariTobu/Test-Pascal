program kadai06c;
var
    i: integer;
    temp: integer;
    cnt: array[0..4] of integer;
begin
    for i := 0 to 4 do
        cnt[i] := 0;

    writeln('0から4までの整数値を10回入力してください');
    for i := 1 to 10 do begin
        readln(temp);
        cnt[temp] := cnt[temp] + 1;
    end;

    write('各数字の入力回数は ');
    for i := 0 to 4 do
        write(cnt[i], ' ');
    writeln('です');
end.