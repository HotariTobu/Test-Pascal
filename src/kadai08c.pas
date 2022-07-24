program kadai08c;
const
    WEIGHT = 50;
var
    i, ip, j: integer;
    n: integer;
    vs: array[0..9, -1..9] of real;
    temp, max: real;
    maxR, maxC: integer;
begin
    write('n = ');
    read(n);

    {
        50
        75  75
        87.5    125    87.5
    }

    n := n - 1;

    max := WEIGHT;
    maxR := 0;
    maxC := 0;

    vs[0][-1] := 0;
    vs[0][0] := WEIGHT;
    vs[0][1] := 0;
    for i := 1 to n do begin
        ip := i - 1;
        for j := 0 to i do begin
            temp := (vs[ip][j - 1] + vs[ip][j]) / 2;
            vs[i][j] := temp + WEIGHT;
            if temp > max then begin
                max := temp;
                maxR := i;
                maxC := j;
            end;
        end;
    end;

    writeln(maxR, '段目', maxC, '列目の人に');
    writeln('最大負荷', max:8:2, 'kgがかかる');
end.