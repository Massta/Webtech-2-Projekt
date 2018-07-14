import 'package:angular/angular.dart';
import 'package:example08/components/session/session_component.dart';
import 'package:example08/components/jwt/jwt_component.dart';

@Component(
    selector: 'my-app',
    directives: const [SessionComponent, JWTComponent],
    template: ''' 
      <h1>{{name}}</h1>
      <session-component></session-component>
      <br>
      JWT:
      <br>
      <jwt-component></jwt-component>
    ''')
class AppComponent {
  var name = 'TUDo';
}
