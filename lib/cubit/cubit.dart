
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard_ui/cubit/states.dart';
import '../components/screens/color catalogs/colors_catatlogs.dart';
import '../components/screens/home/home.dart';
import '../components/screens/services/services.dart';
import '../components/screens/users/user_events.dart';
import '../components/screens/users/users_view.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(IntialState());
  var screenIndex=0;
  var screens=[
    const HomeBody(),
    const Users(),
    const Colors(),
    const Services(),
    const UserEvents(),
  ];
  changeIndex(index) {
    screenIndex = index;
    emit(ChangeScreen());
  }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

}