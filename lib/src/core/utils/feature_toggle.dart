import 'package:apr/src/core/constants/env_variables.dart';
import 'package:feature_flags_toggly/feature_flags_toggly.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class FeatureToggle {
  Future<void> init() async {
    await Toggly.init(
      flagDefaults: {
        FeatureToggleType.isDevSpace.name:
            EnvVariables.space.name.toLowerCase() == UiFlavorType.dev.name,
        FeatureToggleType.isProdSpace.name:
            EnvVariables.space.name.toLowerCase() == UiFlavorType.prod.name,
      },
    );
  }
}

enum FeatureToggleType { isDevSpace, isProdSpace }
