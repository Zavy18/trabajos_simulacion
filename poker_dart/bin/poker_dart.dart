import 'package:poker_dart/poker_dart.dart' as poker_dart;
import 'dart:math';

void main(List<String> arguments) {
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

  List<double> p = [0.0001, 0.0045, 0.009, 0.072, 0.108, 0.504, 0.3024];

  poker(numeros, p);
}

void poker(List<double> numeros, List<double> p) {
  List<String> nuevo = new List(numeros.length);
  double diferentes = 0,
      pares = 0,
      dos_pares = 0,
      tercia = 0,
      poker = 0,
      quintilla = 0;
  double pares_t = 0,
      dosp_t = 0,
      tercia_t = 0,
      poker_t = 0,
      quintilla_t = 0,
      diferentes_t = 0;
  double n_mayus = 20;
  List<double> conteo = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<double> fe = new List(7);
  double efe_e = 0, acumulado = 0, equiso = 0;

  for (var i = 0; i < numeros.length; i++) {
    nuevo[i] = (numeros[i]).toString();
    for (var z = 2; z < 7; z++) {
      if (nuevo[i][z] == "0") {
        conteo[0]++;
      }
      if (nuevo[i][z] == "1") {
        conteo[1]++;
      }
      if (nuevo[i][z] == "2") {
        conteo[2]++;
      }
      if (nuevo[i][z] == "3") {
        conteo[3]++;
      }
      if (nuevo[i][z] == "4") {
        conteo[4]++;
      }
      if (nuevo[i][z] == "5") {
        conteo[5]++;
      }
      if (nuevo[i][z] == "6") {
        conteo[6]++;
      }
      if (nuevo[i][z] == "7") {
        conteo[7]++;
      }
      if (nuevo[i][z] == "8") {
        conteo[8]++;
      }
      if (nuevo[i][z] == "9") {
        conteo[9]++;
      }
    }

    for (var j = 0; j <= 9; j++) {
      if (conteo[j] == 0 || conteo[j] == 1) {
        diferentes++;
      }

      if (conteo[j] == 2) {
        pares++;
      }

      if (conteo[j] == 3) {
        tercia++;
      }

      if (conteo[j] == 5) {
        poker++;
      }
    }

    if (diferentes == 10) {
      diferentes_t++;
    }
    if (pares == 1) {
      pares_t++;
    }
    if (pares == 2) {
      dosp_t++;
    }
    if (tercia == 3) {
      tercia_t++;
    }
    if (poker == 4) {
      poker_t++;
    }
    for (var y = 0; y <= 9; y++) {
      conteo[y] = 0;
    }
    diferentes = 0;
    pares = 0;
  }

  for (var w = 0; w <= 6; w++) {
    fe[w] = n_mayus * p[w];
    if (fe[w] < 5) {
      acumulado = acumulado + fe[w];
      if (acumulado > 5) {
        acumulado = acumulado - fe[w];
      }
    }
  }

  pares_t = pow((pares_t - fe[5]), 2) / fe[5];
  diferentes_t = pow(diferentes_t - fe[6], 2) / fe[6];
  acumulado = pow((1 - acumulado), 2) / acumulado;

  equiso = pares_t + diferentes_t + acumulado;
  print(equiso);
  if (equiso < 5.99) {
    print("No se rechaza H0");
  } else {
    print("Se rechaza H0");
  }
}
