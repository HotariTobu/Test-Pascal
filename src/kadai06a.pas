program kadai06a;
var
    i: integer;
    a: array[1..5] of real;
begin
    writeln('5つの実数値を入力');
    for i := 1 to 5 do begin
        write(i, '番目 ');
        readln(a[i]);
    end;

    write('何番目の要素を表示しますか？ ');
    readln(i);

    write(i, '番目の要素は', a[i], 'です');
end.