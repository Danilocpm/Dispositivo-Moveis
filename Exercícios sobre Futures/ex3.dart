import 'dart:async';
import 'dart:math';

Future<int> unstableFetch() async {
  await Future.delayed(Duration(seconds: 2));

  final random = Random();
  if (random.nextBool()) {
    return 100;
  } else {
    throw Exception("Falha na busca");
  }
}

Future<void> main() async {
  try {
    final result = await unstableFetch();
    print("Resultado: $result");
  } catch (error) {
    print("Erro: $error");
  }
}

// Neste exemplo, a função unstableFetch utiliza Future.delayed para criar um atraso de 2 segundos. Em seguida, ela gera um número aleatório para simular a chance de 50% de sucesso ou falha. Se o número aleatório for verdadeiro (nextBool()), a função retorna um Future com o valor 100. Caso contrário, ela lança um erro com a mensagem "Falha na busca".

// Na função main, usamos um bloco try-catch para invocar a função unstableFetch e capturar tanto o resultado bem-sucedido quanto qualquer erro lançado. Se o resultado for bem-sucedido, o valor é impresso. Se ocorrer um erro, a mensagem de erro é impressa.