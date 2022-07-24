program kadai08b;
const
    N = 99999;
var
    i, j: int32;
    vs: array[2..N] of boolean;
    count, sum, max: int32;
begin
    for i := 2 to N do
        vs[i] := true;
    
    max := trunc(sqrt(n)) + 1;
    for i := 2 to max do begin
        if vs[i] then begin
            j := i * 2;
            while j <= N do begin
                vs[j] := false;
                j := j + i;
            end;
        end;
    end;

    count := 0;
    sum := 0;
    for i := 2 to N do begin
        if vs[i] then begin
            count := count + 1;
            sum := sum + i;
        end;
    end;

    writeln(N, '以下の素数は', count, '個です');
    writeln('それらの素数の総和は', sum, 'です');

{
    for i := 2 to 20 do
        if vs[i] then
            write(i, ' ');
    writeln();
}
end.