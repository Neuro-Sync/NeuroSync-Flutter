import 'package:get_it/get_it.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';

import '../../../features/preparing/screens/demo/widgets/entertainment_items_neighbours.dart';

GetIt getIt = GetIt.I;

void setup() {
  getIt.registerSingleton<EnterTainMentNeighbours>(EnterTainMentNeighbours());
}
