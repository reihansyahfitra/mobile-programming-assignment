import "dart:io";
void main(List<String> arguments) {
  stdout.write("Soal nomor 1:\n");
  for (var i = 1; i <= 3; i++) {
    stdout.write(i*3);
    stdout.write(" ");
  }
  stdout.write("\n");
  for (var i = 1; i <= 7; i+=2) {
    stdout.write(i);
    stdout.write(" ");
  }
  stdout.write("\n");
  for (var i = 1; i <= 5; i++) {
    var fact = 1;
    for (var j = 1; j <= i; j++) {
      fact *= j;
    }
    stdout.write(fact);
    stdout.write(" ");
  }
  stdout.write("\n");
  for (var i = 1; i <= 6; i++) {
    stdout.write(i);
    stdout.write(" ");
  }
  stdout.write("\n");
  stdout.write("Soal nomor 2:\n");
  var a = 12;
  var b = 8;
  var temp;
  while (b != 0) {
    temp = b;
    b = a % b;
    a = temp;
  }
  stdout.writeln("Bilangan 1: 12");
  stdout.writeln("Bilangan 2: 8");
  stdout.write("FPB 12 dan 8: ");
  stdout.write(a);
}
