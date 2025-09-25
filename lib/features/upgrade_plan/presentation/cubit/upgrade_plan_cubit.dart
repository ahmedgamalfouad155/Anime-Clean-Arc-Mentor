import 'package:flutter_bloc/flutter_bloc.dart';

class UpgradePlanCubit extends Cubit<int> {
  UpgradePlanCubit() : super(0);

  void selectPlan(int index) {
    emit(index);
  }
}
