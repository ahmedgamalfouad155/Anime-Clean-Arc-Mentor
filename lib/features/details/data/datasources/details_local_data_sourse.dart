import 'package:animy_clean_arc/features/details/data/dummy_data/dummy_details_data.dart';
import 'package:animy_clean_arc/features/details/data/models/details_model.dart';

abstract class DetailsLocalDataSourse {
  Future<DetailsModel> getDetails();
}

class DetailsLocalDataSourseImpl extends DetailsLocalDataSourse {
  @override
  Future<DetailsModel> getDetails() async {
    return Future.value(dummyDetailsData);
  }
}
