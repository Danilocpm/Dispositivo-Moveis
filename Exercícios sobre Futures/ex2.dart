Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 42;
}

Future<String> fetchUserName(int userId) async {
  await Future.delayed(Duration(seconds: 2));
  return 'Usuário $userId';
}

Future<void> main() async {
  try {
    final userId = await fetchUserId();
    final userName = await fetchUserName(userId);
    print(userName);
  } catch (error) {
    print('Ocorreu um erro: $error');
  }
}

// Neste exemplo, a função main é marcada como assíncrona usando o modificador async. Dentro dela, usamos o bloco try-catch para tratar possíveis erros que podem ocorrer durante as operações assíncronas.
// Primeiro, chamamos fetchUserId para obter o ID do usuário. Usamos await para aguardar a conclusão do Future<int> retornado por essa função. Em seguida, usamos o ID do usuário para chamar fetchUserName, novamente usando await para aguardar a conclusão do Future<String> retornado pela função.
// Se algo der errado durante essas chamadas assíncronas, o bloco catch capturará o erro e imprimirá uma mensagem de erro. Caso contrário, se tudo correr bem, o nome do usuário será impresso. 