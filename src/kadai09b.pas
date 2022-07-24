program kadai09b;
function minof(a, b: real): real;
begin
    if a < b then
        minof := a
    else
        minof := b;
end;

var
    a, b: real;
begin
    write('a = ');
    read(a);
    write('b = ');
    read(b);

    writeln('最小値は', minof(a, b), 'です');
end.