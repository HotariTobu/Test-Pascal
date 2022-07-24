program kadai08x;
const
    M = 100000;
var
    i, j: int32;
    n, hn, count: int32;
    vs: array[2..M] of boolean;
    max: int32;
begin
    for i := 2 to M do
        vs[i] := true;
    
    max := trunc(sqrt(M)) + 1;
    for i := 2 to max do begin
        if vs[i] then begin
            j := i * 2;
            while j <= M do begin
                vs[j] := false;
                j := j + i;
            end;
        end;
    end;

{
    for i := 2 to 20 do
        if vs[i] then
            write(i, ' ');
    writeln();
}
    
    write('n = ');
    read(n);

    hn := n div 2;
    count := 0;
    for i := 2 to hn do begin
        j := n - i;
        if vs[i] and vs[j] then begin
            write(i, '+', j, ' ');
            count := count + 1;
        end;
    end;

    if count = 0 then 
        writeln(n, 'は2つの素数に分解できない')
    else begin
        writeln();
        writeln('の', count, '通りの方法に', n, 'は分解できる');
    end;
end.