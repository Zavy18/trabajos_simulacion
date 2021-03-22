import 'dart:developer';
import 'package:distribucion_exponencial/distribucion_exponencial.dart'
    as distribucion_exponencial;
import 'dart:math' as math;

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
  double lambda = 5;
  distribucion(numeros, lambda);
}

void distribucion(List<double> numeros, double lambda) {
  List<double> resultado = new List(numeros.length);
  for (var i = 0; i < numeros.length; i++) {
    resultado[i] = -(1 / lambda) * math.log(numeros[i]);
    print(resultado[i]);
  }
}
