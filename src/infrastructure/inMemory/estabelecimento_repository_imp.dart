import '../../domain/model/estabelecimento.dart';
import '../../domain/port/output/estabelecimento_repository.dart';
import 'estabelecimento_mapper.dart';

class EstabelecimentoRepositoryImp implements EstabelecimentoRepository {
  final EstabelecimentoMapper _estabelecimentoMapper;
  EstabelecimentoRepositoryImp(this._estabelecimentoMapper);

  List<Map> fakeDB = [
    {
      'nome': 'Estabelecimneto XPTO',
      'cnpj': '12345678901234',
    },
    {
      'nome': 'Estabelecimneto OTPX',
      'cnpj': '12345678912345',
    },
  ];

  @override
  List<Estabelecimento> getListEstabelecimentos() {
    // trata todas as chamadas ao mundo externo relacionado a infra
    return fakeDB.map((e) => _estabelecimentoMapper.toDomain(e)).toList();
  }
}
