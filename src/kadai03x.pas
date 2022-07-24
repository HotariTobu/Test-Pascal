program kadai03x;
var
	a, b, c: integer;
	d: integer;
	x: real;
begin
	write('a = ');
	readln(a);
	write('b = ');
	readln(b);
	write('c = ');
	readln(c);
	
	d := b * b - 4 * a * c;
	if d < 0 then writeln('実数解はありません')
	else begin
		x := (-b - sqrt(d)) / (2 * a);
		if d = 0 then begin
			write('実数解は', x);
			writeln('（重解）です');
		end else begin
			write('実数解は', x);
			write('と', (-b + sqrt(d)) / (2 * a));
			writeln('です');
		end;
	end;
end.
