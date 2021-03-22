import 'package:poker_dart/poker_dart.dart' as poker_dart;

void main(List<String> arguments) {
  print('Hello world: ${poker_dart.calculate()}!');

  List<double> numeros = [
    0.7089585,
    0.0278870,
    0.90146,
    0.3509843,
    0.0181246,
    0.4980611,
    0.9468247,
    0.3457862,
    0.2709902,
    0.9485169,
    0.3496914,
    0.4036384,
    0.9179199,
    0.2674292,
    0.1533957,
    0.864809,
    0.8919294,
    0.7403078,
    0.1952756,
    0.6304819
  ];

  poker(numeros);
}

void poker(List<double> numeros) {
  List<String> nuevo = new List(numeros.length);
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, h = 0, j = 0, k = 0;
  int pares = 0, dos_pares = 0, tercia = 0, poker = 0, quintilla = 0;

  for (var i = 0; i < numeros.length; i++) {
    nuevo[i] = (numeros[i]).toString();
    print(nuevo[i]);
    for (var z = 2; z < 7; z++) {
      if (nuevo[i][z] == "0") {
        a++;
      }
      if (nuevo[i][z] == "1") {
        b++;
      }
      if (nuevo[i][z] == "2") {
        c++;
      }
      if (nuevo[i][z] == "3") {
        d++;
      }
      if (nuevo[i][z] == "4") {
        e++;
      }
      if (nuevo[i][z] == "5") {
        f++;
      }
      if (nuevo[i][z] == "6") {
        g++;
      }
      if (nuevo[i][z] == "7") {
        h++;
      }
      if (nuevo[i][z] == "8") {
        j++;
      }
      if (nuevo[i][z] == "9") {
        k++;
      }
    }
    print(a);
    print(b);
    print(c);
    print(d);
    print(e);
    print(f);
    print(g);
    print(h);
    print(j);
    print(k);
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    e = 0;
    f = 0;
    g = 0;
    h = 0;
    j = 0;
    k = 0;
  }
}
