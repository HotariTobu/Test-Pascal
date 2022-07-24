program kadai08a;
var
    i: int32;
    n, max: int32;
begin
    write('n = ');
    read(n);

    max := trunc(sqrt(n)) + 1;
    for i := 3 to max do
        if n mod i = 0 then
            break;
    
    if i = max then
        writeln(n, 'は素数です')
    else
        writeln(n, 'は', i, 'で割り切れるので素数でない');
end.