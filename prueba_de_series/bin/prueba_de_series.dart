import 'dart:ffi';
import 'dart:math';

import 'package:prueba_de_series/prueba_de_series.dart' as prueba_de_series;

List<double> numeros = [
  0.1199,
  0.2874,
  0.936,
  0.4487,
  0.6702,
  0.5579,
  0.2754,
  0.786,
  0.8221,
  0.201,
  0.2951,
  0.133,
  0.8398,
  0.6495,
  0.3926,
  0.0545,
  0.0798,
  0.8045,
  0.1832,
  0.917
];

void main(List<String> arguments) {
  series(numeros);
}

void series(List<double> numeros) {
  double c1 = 0, c2 = 0, c3 = 0, c4 = 0;
  double n = 2, n_Mayus = 20, fe_c1, fe_c2, fe_c3, fe_c4;
  double resta_1, resta_2, resta_3, resta_4, chi_cuadrada;

  List<double> par_uno = new List(20);
  List<double> par_dos = new List(20);

  for (var i = 0; i < 19; i++) {
    par_uno[i] = numeros[i];
    par_dos[i] = numeros[i + 1];

    if (par_uno[i] < 0.5 && par_dos[i] < 0.5) {
      c1++;
    }
    if (par_uno[i] < 0.5 && par_dos[i] > 0.5) {
      c3++;
    }
    if (par_uno[i] > 0.5 && par_dos[i] < 0.5) {
      c2++;
    }
    if (par_uno[i] > 0.5 && par_dos[i] > 0.5) {
      c4++;
    }
  }
  fe_c1 = (n_Mayus - 1) / pow(n, 2).toInt();
  fe_c2 = (n_Mayus - 1) / pow(n, 2).toInt();
  fe_c3 = (n_Mayus - 1) / pow(n, 2).toInt();
  fe_c4 = (n_Mayus - 1) / pow(n, 2).toInt();

  resta_1 = pow((c1 - fe_c1), 2).toDouble();
  resta_2 = pow((c2 - fe_c2), 2).toDouble();
  resta_3 = pow((c3 - fe_c3), 2).toDouble();
  resta_4 = pow((c4 - fe_c4), 2).toDouble();

  chi_cuadrada = (resta_1 + resta_2 + resta_3 + resta_4) / fe_c1;

  print(chi_cuadrada);
}
