program kadai04c;
var
	a, b: integer;
	i: integer;
	sum: integer;
begin
	write('a = ');
	readln(a);
	write('b = ');
	readln(b);
	
	for i := a to b do sum := sum + i;
	
	writeln(a, '以上', b, '以下の整数の和は', sum, 'です');
end.
