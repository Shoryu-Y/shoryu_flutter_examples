import 'package:amplify_app/amplifyconfiguration.dart';
import 'package:amplify_app/app.dart';
import 'package:amplify_app/models/ModelProvider.dart';
import 'package:amplify_app/util/logger.dart';
import 'package:amplify_app/util/provider_observer.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> initAmplify() async {
  final auth = AmplifyAuthCognito();
  final datastore = AmplifyDataStore(modelProvider: ModelProvider.instance);

  try {
    await Amplify.addPlugins([auth, datastore]);
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException catch (e) {
    Logger.showAmplifyException(e);
  } on Exception catch (e) {
    logger.info('error: $e');
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAmplify();
  runApp(
    const ProviderScope(
      observers: [ProviderLogger()],
      child: App(),
    ),
  );
}
