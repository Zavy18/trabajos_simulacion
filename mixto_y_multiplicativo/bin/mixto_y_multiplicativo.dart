import 'package:mixto_y_multiplicativo/mixto_y_multiplicativo.dart'
    as mixto_y_multiplicativo;

double global;
void main(List<String> arguments) {
  double m = 100;
  double a = 8;
  double c = 16;
  double x = 15;

  var cadena = new List(100);

  for (var i = 0; i <= m; i++) {
    if (i == 0) {
      congruencial_mixto(x, a, m, c);
    } else {
      congruencial_mixto(global, a, m, c);
    }
  }
  for (var j = 0; j <= m; j++) {}
}

double congruencial_mixto(double x, double a, double m, double c) {
  double equis_uno, residuo, resultado;
  equis_uno = a * x + c;
  residuo = equis_uno % m;
  resultado = residuo / m;
  global = residuo;
  print(resultado);
  return residuo;
}
