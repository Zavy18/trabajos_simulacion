import 'package:poisson/poisson.dart' as poisson;
import 'dart:math';
import 'dart:developer';

void main(List<String> arguments) {
  double lambda = 5.0, erre = 0.85;
  List<double> pequis = new List(21);
  List<double> sumatoria = new List(21);

  for (var i = 0; i <= 20; i++) {
    pequis[i] = (pow(lambda, i) * pow(2.718, -lambda)) / factorial(i);
    //print(pequis[i]);
    if (i == 0) {
      sumatoria[i] = pequis[i];
    } else {
      sumatoria[i] = pequis[i] + sumatoria[i - 1];
    }

    if (i == 0) {
      if (erre > 0 && erre < sumatoria[i]) {
        print(i);
      }
    } else {
      if (erre > sumatoria[i - 1] && erre <= sumatoria[i]) {
        print(i);
      }
    }
  }
}

int factorial(int n) {
  if (n < 0) throw ('Negative numbers are not allowed.');
  return n <= 1 ? 1 : n * factorial(n - 1);
}
