program kadai03b;
var
    a, b, c: integer;
    min, max: integer;
begin
    write('整数aを入力してください ');
    readln(a);
    write('整数bを入力してください ');
    readln(b);
    write('整数cを入力してください ');
    readln(c);

    min := a;
    max := b;

    if b < min then min := b;
    if c < min then min := c;

    if max < b then max := b;
    if max < c then max := c;

    write('最小値は', min);
    writeln('です');
    write('最大値は', max);
    writeln('です');
end.