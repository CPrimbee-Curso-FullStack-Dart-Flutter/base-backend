import '../../domain/model/estabelecimento.dart';

class EstabelecimentoMapper {
  Estabelecimento toDomain(Map map) {
    return Estabelecimento(
      nome: map['nome'],
      cnpj: map['cnpj'],
    );
  }
}
