import 'dart:async';

Future<String> fetchDataFromUrl(String url) async {
  // Simulação de chamada à API com um atraso de 2 segundos
  await Future.delayed(Duration(seconds: 2));
  return "Dados da URL $url";
}

Future<List<String>> fetchAllData(List<String> urls) async {
  final List<Future<String>> futures = [];

  for (var url in urls) {
    futures.add(fetchDataFromUrl(url));
  }

  try {
    final List<String> results = await Future.wait(futures);
    return results;
  } catch (error) {
    throw Exception("Erro durante as solicitações: $error");
  }
}

Future<void> main() async {
  final urls = [
    'https://api.example.com/data1',
    'https://api.example.com/data2',
    'https://api.example.com/data3',
  ];

  try {
    final responses = await fetchAllData(urls);
    for (var response in responses) {
      print(response);
    }
  } catch (error) {
    print("Erro geral: $error");
  }
}
