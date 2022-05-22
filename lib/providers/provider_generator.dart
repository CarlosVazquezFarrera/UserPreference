import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:user_preference/providers/providers.dart';

class ProviderGenerator {
  static List<SingleChildStatelessWidget> get providers {
    return [ChangeNotifierProvider<UiProvider>(create: (_) => UiProvider())];
  }
}
