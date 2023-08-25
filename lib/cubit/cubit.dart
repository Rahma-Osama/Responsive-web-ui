
import 'package:bloc/bloc.dart';
import 'package:responsive_dashboard_ui/cubit/states.dart';

import '../components/screens/color catalogs/colors_catatlogs.dart';
import '../components/screens/home/home.dart';
import '../components/screens/users/user_events.dart';
import '../components/screens/users/users_view.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(IntialState());
  var screenIndex=0;
  var screens=[
    HomeBody(),
    Users(),
    Colors(),
    HomeBody(),
    UserEvents()
  ];
  changeIndex(index) {
    screenIndex = index;
    emit(ChangeScreen());
  }
}