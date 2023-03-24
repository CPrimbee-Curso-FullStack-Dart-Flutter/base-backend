import 'application/web/estabelecimento_controller.dart';
import 'domain/port/input/estabelecimento_service.dart';
import 'domain/port/output/estabelecimento_repository.dart';
import 'domain/services/estabelecimento_service_imp.dart';
import 'infrastructure/inMemory/estabelecimento_mapper.dart';
import 'infrastructure/inMemory/estabelecimento_repository_imp.dart';

void main(List<String> args) {
  EstabelecimentoRepository _estabelecimentoRepository =
      EstabelecimentoRepositoryImp(EstabelecimentoMapper());
  EstabelecimentoService _estabelecimentoService =
      EstabelecimentoServiceImp(_estabelecimentoRepository);
  EstabelecimentoController _controller =
      EstabelecimentoController(_estabelecimentoService);

  // www.meusite.com/estabelecimento/getAll
  _controller.getAll();
}
