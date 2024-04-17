import 'package:neurosync/core/app_cubit/app_cubit.dart';

import '../../features/preparing/screens/demo/widgets/entertainment_items_neighbours.dart';
import '../network/remote/locator.dart';

class LocatorUtils {
  // PrefService pref() => locator<PrefService>();
  EnterTainMentNeighbours n() => getIt<EnterTainMentNeighbours>();
}
