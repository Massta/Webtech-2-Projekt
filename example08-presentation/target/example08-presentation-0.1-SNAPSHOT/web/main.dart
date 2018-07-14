import 'package:angular/angular.dart';import 'main.template.dart' as ngStaticInit;
import 'package:example08/app_component.dart';

void main() {ngStaticInit.initReflector();
  bootstrapStatic(AppComponent);
}
