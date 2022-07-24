program kadai09a;
function zet(x: integer): integer;
begin
    if x < 0 then
        zet := -x
    else
        zet := x;
end;

var
    z: integer;
begin
    write('z = ');
    read(z);
    writeln(z, 'の絶対値は', zet(z), 'です');
end.