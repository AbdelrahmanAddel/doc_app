import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint("✅ Bloc Created: ${bloc.runtimeType}");
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    debugPrint("❌ Bloc Closed: ${bloc.runtimeType}");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint("🔄 Bloc Changed: ${bloc.runtimeType},\n Change: $change");
  }
}
