import 'dart:async';

Future<String> delayedMessage() async {
  await Future.delayed(Duration(seconds: 2));
  return "Olá, Dart!";
}

void main() async {
  print("Iniciando...");

  final messageFuture = delayedMessage();
  print("Função chamada, esperando...");

  final message = await messageFuture;
  print("Mensagem recebida: $message");
}


// Nesse exemplo, a função _delay é criada para encapsular o Future<void>.delayed, permitindo que você adie a execução por um determinado período sem usar a função Future.delayed diretamente na função delayedMessage. No entanto, lembre-se de que o uso de sleep ou qualquer forma de bloqueio não é recomendado em operações assíncronas, pois pode afetar a capacidade do programa de responder a outros eventos durante o atraso.