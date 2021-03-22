import 'package:bernoull/bernoull.dart' as bernoull;

List<double> numeros = [
  0.914,
  0.775,
  0.495,
  0.534,
  0.585,
  0.185,
  0.521,
  0.079,
  0.968,
  0.346
];

double main(List<String> arguments) {
  comparar(numeros);
}

void comparar(List<double> numeros) {
  double x = 0.0;
  double p = 0.7;
  for (var i = 0; i < 10; i++) {
    if (numeros[i] <= p) {
      x = 1.0;
    } else {
      x = 0.0;
    }
    print(x);
  }
}
