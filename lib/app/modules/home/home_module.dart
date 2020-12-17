import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_flutter/app/modules/home/home_controller.dart';
import 'package:slidy_flutter/app/modules/home/home_page.dart';
import 'package:slidy_flutter/app/modules/home/repositories/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokeRepository>())),
        //repository
        Bind((i) => PokeRepository(i.get<Dio>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];
}
