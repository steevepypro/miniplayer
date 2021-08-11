import 'package:miniplayer/miniplayer.dart';

extension SelectedColorExtension on PanelState {
  int get heightCode {
    switch (this) {
      case PanelState.MIN:
        return -1;
      case PanelState.MAX:
        return -2;
      case PanelState.DISMISS:
        return -3;
      default:
        return -1;
    }
  }
}

///Calculates the percentage of a value within a given range of values
double percentageFromValueInRange({required double min, max, value}) {
  return (value - min) / (max - min);
}

double borderDouble({required double minRange, maxRange, value}) {

  if (value > maxRange) return double.parse(maxRange.toStringAsFixed(1));
  if (value < minRange) return double.parse(minRange.toStringAsFixed(1));
  return value;
}
