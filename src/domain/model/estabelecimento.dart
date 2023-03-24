// ignore_for_file: public_member_api_docs, sort_constructors_first
class Estabelecimento {
  String nome;
  String cnpj;

  Estabelecimento({
    required this.nome,
    required this.cnpj,
  });

  @override
  String toString() => 'Estabelecimento(nome: $nome, cnpj: $cnpj)';
}
