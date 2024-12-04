program MainDiagonalAverage;

var
  matrix: array[1..10, 1..10] of integer;
  n, i, sum, count: integer;
  average: real;

begin
  writeln('Введіть розмірність квадратної матриці (n x n):');
  readln(n);
  
  writeln('Введіть елементи матриці:');
  for i := 1 to n do
  begin
    for var j := 1 to n do
    begin
      write('matrix[', i, ',', j, ']: ');
      readln(matrix[i, j]);
    end;
  end;

  sum := 0;
  count := 0;

  for i := 1 to n do
  begin
    sum := sum + matrix[i, i];  // Сума елементів головної діагоналі
    count := count + 1;
  end;

  average := sum / count;

  writeln('Середнє арифметичне елементів головної діагоналі: ', average:0:2);
end.
