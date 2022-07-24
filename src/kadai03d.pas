program kadai03d;
var
	a, b, c: integer;
	count: integer;
begin
	write('a = ');
	readln(a);
	write('b = ');
	readln(b);
	write('c = ');
	readln(c);
	
	count := 0;
	if a = b then count := count + 1;
	if b = c then count := count + 1;
	if c = a then count := count + 1;
	
	case count of
		3: writeln('3つの値は等しい');
		1: writeln('2つの値は等しい');
		0: writeln('値は異なる');
	end;
end.
