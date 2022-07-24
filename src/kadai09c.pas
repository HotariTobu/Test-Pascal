program kadai09c;
function minof(a, b: real): real;
begin
    if a < b then
        minof := a
    else
        minof := b;

end;

function min4(a, b, c, d: real): real;
begin
    min4 := minof(minof(a, b), minof(c, d));
end;

var
    a, b, c, d: real;
begin
    write('4つの実数を入力 ');
    read(a, b, c, d);
    writeln('最小値は', min4(a, b, c, d), 'です');
end.