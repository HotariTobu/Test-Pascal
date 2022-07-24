program kadai05d;
var
    i, min, minIndex, temp: integer;
begin
    writeln('10個の整数を入力します');

    write('1番目 ');
    readln(min);
    minIndex := 1;

    for i := 2 to 10 do begin
        write(i, '番目 ');
        readln(temp);
        if temp < min then begin
            min := temp;
            minIndex := i;
        end;
    end;

    writeln('最も小さい数は', minIndex, '番目に入力された', min, 'です');
end.