import 'package:slidy_flutter/app/modules/login/login_module.dart';
import 'package:slidy_flutter/app/pages/splash/splash_page.dart';

import 'pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:slidy_flutter/app/shared/utils/constants.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy_flutter/app/app_widget.dart';
import 'package:slidy_flutter/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $SplashController,
        $AppController,
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SplashPage()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
