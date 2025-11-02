import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:testing_in_flutter/app.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testing_in_flutter/core/di/dependency_injection.dart';

Future<void> main() async {
  //================= Hydrated Bloc Initialization =================//
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );

  //======================= setupGetIt =============
  await setupGetIt();

  runApp(const AppThemeing());
}
