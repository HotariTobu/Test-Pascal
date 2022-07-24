program kadai05c;
var
    x, y, a, b, t: int32;
begin
    write('x = ');
    readln(x);
    write('y = ');
    readln(y);

    if x < y then begin
        a := y;
        b := x;
    end
    else begin
        a := x;
        b := y;
    end;

    {
        writeln(a, ', ', b, ', ', x, ', ', y);
    }

    while b > 0 do begin
        t := a mod b;
        a := b;
        b := t;
    end;

    writeln('最小公倍数は', x * y div a, 'です');
end.