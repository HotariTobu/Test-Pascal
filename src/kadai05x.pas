program kadai05x;
var
    i, temp: integer;
    min, minIndex: integer;
    min2, minIndex2: integer;
begin
    writeln('10個の整数を入力します');

    write('1番目 ');
    readln(min);
    minIndex := 1;

    write('2番目 ');
    readln(temp);
    minIndex2 := 2;

    if temp < min then begin
        min2 := min;
        minIndex2 := 1;
        min := temp;
        minIndex := 2;
    end;

    for i := 3 to 10 do begin
        write(i, '番目 ');
        readln(temp);
        if temp < min then begin
            min2 := min;
            minIndex2 := minIndex;
            min := temp;
            minIndex := i;
        end
        else if temp < min2 then begin
            min2 := temp;
            minIndex2 := i;
        end;
    end;

    writeln('2番目に小さい数は', minIndex2, '番目に入力された', min2, 'です');
end.