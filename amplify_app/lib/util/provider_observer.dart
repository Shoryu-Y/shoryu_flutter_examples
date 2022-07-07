import 'package:amplify_app/util/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  const ProviderLogger();

  @override
  void didAddProvider(
      ProviderBase<dynamic> provider,
      Object? value,
      ProviderContainer container,
      ) {
    super.didAddProvider(provider, value, container);
    logger.info(
      '''didAddProvider
      provider: ${provider.name ?? provider.runtimeType},
      value: $value,
      container: $container,
      ''',
    );
  }

  @override
  void didUpdateProvider(
      ProviderBase<dynamic> provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    super.didUpdateProvider(provider, previousValue, newValue, container);
    logger.info(
      '''didUpdateProvider
      provider: ${provider.name ?? provider.runtimeType},
      previousValue: $previousValue,
      newValue: $newValue,
      container: $container,
      ''',
    );
  }

  @override
  void didDisposeProvider(
      ProviderBase<dynamic> provider,
      ProviderContainer containers,
      ) {
    super.didDisposeProvider(provider, containers);
    logger.info(
      '''didDisposeProvider
      provider: ${provider.name ?? provider.runtimeType},
      container: $containers,
      ''',
    );
  }

  @override
  void providerDidFail(
      ProviderBase<dynamic> provider,
      Object error,
      StackTrace stackTrace,
      ProviderContainer container,
      ) {
    super.providerDidFail(provider, error, stackTrace, container);
    logger.info(
      '''providerDidFail
      provider: ${provider.name ?? provider.runtimeType},
      error: $error,
      stackTrace: $stackTrace,
      container: $container,
      ''',
    );
  }
}