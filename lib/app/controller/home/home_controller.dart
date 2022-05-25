import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  String title = "";
  @observable
  String description = "";
  @observable
  bool finished = false;
  @computed
  String get valueTitle => title;
  @computed
  String get valueDescriotin => description;
  @computed
  bool get valueFinished => finished;
  @action
  void setTitle(value) => title = value;
  @action
  void setDescription(value) => description = value;
}
