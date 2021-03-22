import 'dart:developer';
import 'package:distribucion_exponencial/distribucion_exponencial.dart'
    as distribucion_exponencial;
import 'dart:math';

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
List<double> logi = [
  -2.121097217,
  -1.246880305,
  -0.0661398025,
  -0.801400766,
  -0.4001791037,
  -0.5835755441,
  -1.289530693,
  -0.2407984866,
  -0.1958932368,
  -1.604450371,
  -1.220440997,
  -2.017406151,
  -0.1745915107,
  -0.4315524429,
  -0.9349639971,
  -2.909554577,
  -2.528231775,
  -0.2175343125,
  -1.697176827,
  -0.08664780673
];

void main(List<String> arguments) {
  //Profe no supimos como usar la funcion logaritmo natural en drt ya buscamos en la documentacion de la API math:dart y nos manda error al intertar usarla
  //Asi que optamos por hacer un arreglo con los logaritmo naturales de los numero y asi poderle entregar la practica y si nos pudiera ayudar con eso estaria muy bien.
  //Dejamos comentado alguna formas que intentamo pero ninguna funciono.
  double lambda = 5;
  //double logBase(num x, num base) => log(x) / log(base);
  //double log10(num x) => log(x) / ln10;
  //external double log(num x);    no sirve esto profe
  distribucion(numeros, lambda, logi);
}

void distribucion(List<double> numeros, double lambda, List<double> logi) {
  List<double> resultado = new List(numeros.length);
  for (var i = 0; i < numeros.length; i++) {
    //resultado[i] = -(1 / lambda) * double logBase(numeros[i],"e");
    resultado[i] = -(1 / lambda) * logi[i];
    print(resultado[i]);
  }
}
