import 'package:trabajos_simulacion/trabajos_simulacion.dart'
    as trabajos_simulacion;
import 'dart:math';

List<double> valores = [
  0.36,
  0.04,
  0.48,
  0,
  0.16,
  0.44,
  0.68,
  0.6,
  0.96,
  0.84,
  0.88,
  0.2,
  0.76,
  0.24,
  0.08,
  0.8,
  0.56,
  0.64,
  0.28,
  0.4
];

List<double> numeros = [
  0.65625,
  0.3125,
  0.21875,
  0.375,
  0.78125,
  0.4375,
  0.34375,
  0.5,
  0.90625,
  0.5625,
  0.46875,
  0.625,
  0.03125,
  0.6875,
  0.59375,
  0.75,
  0.15625,
  0.8125,
  0.71875,
  0.875
];

void main(List<String> arguments) {
  double a = 0.05, n = 20, pe = 0.5, po, desvi, nn;
  po = promedio_Obtenido(valores, n);
  nn = raiz(n);
  desvi = desviacion_Estandar(valores, n, po);
  print("Zeta cero es para el procedimiento de promedios: ");
  print(zeta_Cero(pe, po, nn, desvi));

  double n_Minus = 4, a_a = 5;
  print("Chi cuadrada es para el procedimiento de frecuencias:");
  print(frecuencias(numeros, a_a, n, n_Minus));
}

double frecuencias(List<double> numeros, double a_a, double n, double n_Minus) {
  var x = 0, y = 0, z = 0, w = 0;
  double sum;
  for (var i = 0; i < 20; i++) {
    if (numeros[i] <= 0.25) {
      w++;
    } else {
      if (numeros[i] <= 0.5) {
        x++;
      } else {
        if (numeros[i] <= 0.75) {
          y++;
        } else {
          z++;
        }
      }
    }
  }

  w = pow((w - a_a), 2).toInt();
  x = pow((x - a_a), 2).toInt();
  y = pow((y - a_a), 2).toInt();
  z = pow((z - a_a), 2).toInt();
  sum = (w + x + y + z) / ((n / n_Minus) * n_Minus);
  return sum;
}

double promedio_Obtenido(List<double> valores, double n) {
  double sumatoria = 0;
  for (var i = 0; i < 20; i++) {
    sumatoria = valores[i] + sumatoria;
  }
  double po = sumatoria / n;

  return po;
}

double raiz(double n) {
  double nn;
  nn = sqrt(n);
  return nn;
}

double desviacion_Estandar(
  List<double> valores,
  double n,
  double po,
) {
  double desvi = 0.0;
  for (var j = 0; j < n; j++) {
    desvi = pow((valores[j] - po), 2).toDouble() + desvi;
  }
  desvi = desvi / n;
  desvi = sqrt(desvi);
  return desvi;
}

double zeta_Cero(double pe, double po, double nn, double desvi) {
  double resultado;
  resultado = ((po - pe) * nn) / desvi;
  return resultado;
}
