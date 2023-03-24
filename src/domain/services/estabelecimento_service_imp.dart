import '../model/estabelecimento.dart';
import '../port/input/estabelecimento_service.dart';
import '../port/output/estabelecimento_repository.dart';

class EstabelecimentoServiceImp implements EstabelecimentoService {
  final EstabelecimentoRepository _estabelecimentoRepository;
  EstabelecimentoServiceImp(this._estabelecimentoRepository);

  @override
  List<Estabelecimento> getListEstabelecimentos() {
    // logíca de negócio
    return _estabelecimentoRepository.getListEstabelecimentos();
  }
}
