program kadai04d;

function input(i: integer): real;
var
	tmp: real;
begin
	write(i, '番目' );
	readln(tmp);
	input := tmp;
end;

var
	tmp, min, max: real;
	i: integer;
begin
	tmp := input(1);
	min := tmp;
	max := tmp;
	
	for i := 2 to 10 do begin
		tmp := input(i);
		if tmp < min then min := tmp
		else if tmp > max then max := tmp;
	end;
	
	writeln('最小値は', min:8:2, 'です');
	writeln('最大値は', max:8:2, 'です');
end.
