import 'package:commons_core/commons_core.dart';
import 'package:shelf/shelf.dart';

import '../security/security_service.dart';

abstract class Controller {
  Handler getHandler({
    List<Middleware>? middlewares,
    bool isSecurity = false,
  });

  Handler createHandler({
    required Handler router,
    List<Middleware>? middlewares,
    bool isSecurity = false,
  }) {
    middlewares ??= [];

    if (isSecurity) {
      var securityService = DependencyInjector().get<SecurityService>();
      middlewares.addAll([
        securityService.authorization,
        securityService.verifyJwt,
      ]);
    }

    var pipe = Pipeline();
    for (var m in middlewares) {
      pipe = pipe.addMiddleware(m);
    }

    return pipe.addHandler(router);
  }
}