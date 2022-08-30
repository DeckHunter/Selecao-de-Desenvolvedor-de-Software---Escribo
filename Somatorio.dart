import 'dart:io';

List<int> divisiveis_Por_Cinco = [];
List<int> divisiveis_Por_Tres = [];
int valor_Final = 0;

void main(List<String> args) {
  print('Digite um valor positivo :');
  String? s = stdin.readLineSync();
  if (s != null) {
    if (int.tryParse(s) != null) {
      int n = int.parse(s);
      if (n > 0) {
        somatorio(n);
      } else {
        print('Valor informado é menor que 0');
      }
    } else {
      print('Valor informado não pode ser convertido para inteiro');
    }
  } else {
    print('Valor é vazio');
  }
}

somatorio(int x) {
  for (var i = 1; i < x; i++) {
    if (i % 5 == 0) {
      valor_Final += i;
      divisiveis_Por_Cinco.add(i);
    }
    if (i % 3 == 0) {
      valor_Final += i;
      divisiveis_Por_Tres.add(i);
    }
  }
  print('Valores divisiveis por 5 : ' + divisiveis_Por_Cinco.toString());
  print('Valores divisiveis por 3 : ' + divisiveis_Por_Tres.toString());
  print('Valor Final : ' + valor_Final.toString());
}
