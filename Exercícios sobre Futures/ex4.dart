import 'dart:async';

Future<int> fetchA() async {
  await Future.delayed(Duration(seconds: 1));
  return 5;
}

Future<int> fetchB() async {
  await Future.delayed(Duration(seconds: 2));
  return 7;
}

Future<void> main() async {
  final futureA = fetchA();
  final futureB = fetchB();

  final results = await Future.wait([futureA, futureB]);
  final sum = results.reduce((value, element) => value + element);

  print("Soma: $sum");
}


// Neste exemplo, as funções fetchA e fetchB são definidas da mesma forma que você forneceu. No entanto, ao invés de esperar individualmente por cada uma delas, usamos Future.wait para esperar por ambas ao mesmo tempo. O método Future.wait recebe uma lista de Futures e retorna uma lista com os resultados correspondentes quando todos eles estiverem completos.

// Depois de obter os resultados usando Future.wait, usamos o método reduce para somar os valores obtidos. Por fim, imprimimos a soma total. Note que o tempo total de espera será aproximadamente 2 segundos, já que fetchB demora 2 segundos para ser concluído.