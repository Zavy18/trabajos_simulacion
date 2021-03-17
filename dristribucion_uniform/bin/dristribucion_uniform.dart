import 'package:dristribucion_uniform/dristribucion_uniform.dart'
    as dristribucion_uniform;

int i = 0;

void main(List<String> arguments) {
  double a = 5.0, b = 10.0;

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
    0.917,
  ];

  double r;
  r = distribucion_uniforme(numeros, a, b);
  print(r);
  r = distribucion_uniforme(numeros, a, b);
  print(r);
  r = distribucion_uniforme(numeros, a, b);
  print(r);
  r = distribucion_uniforme(numeros, a, b);
  print(r);
  r = distribucion_uniforme(numeros, a, b);
  print(r);
}

double distribucion_uniforme(List<double> numeros, double a, double b) {
  double r;
  r = a + (b - a) * numeros[i];
  i++;
  return r;
}
