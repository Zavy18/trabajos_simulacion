import 'package:erlang/erlang.dart' as erlang;

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

List<double> logar = [
  -0.9763673311,
  -0.1021504195,
  1.078590083,
  0.3433291198,
  0.7445507822,
  0.5611543417,
  -0.1448008068,
  0.9039313993,
  0.948836649,
  -0.4597204851,
  -0.07571111118,
  -0.8726762649,
  0.9701383751,
  0.713177443,
  0.2097658887,
  -1.764824691,
  -1.383501889,
  0.9271955733,
  -0.5524469409,
  1.058082079,
];

void main(List<String> arguments) {
  double lambda = 5;
  herlang(numeros, logar, lambda);
}

void herlang(List<double> numeros, List<double> logar, double lambda) {
  List<double> resultado = new List(numeros.length);
  for (var i = 0; i < numeros.length; i++) {
    //Profe no sapimos usar la funcion logaritmo natural en otro trabajo se explica mejor lo que intentamos hacer pero
    //Cuando sepamos como se usa solamente es cambiar la multiplicacion por la funcion de logaritmo con el numero del arreglo en luigar de usar todo un arreglo
    //con los logaritmo naturales de los numeros en este caso el arreglo es la multiplicacion de pi por el numero y se le saca el logaritmo natural
    resultado[i] = -(1 / lambda) * logar[i];
    print(resultado[i]);
  }
}
