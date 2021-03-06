import 'package:angular/angular.dart';
import 'package:example08/components/jwt/jwt_component.dart';

@Component(
    selector: 'my-app',
    directives: const [JWTComponent],
    template: ''' 
      <h1>{{name}}</h1>
      Willkommen zum #minimalistischen Todo-Manager!
      <br/>
      <jwt-component></jwt-component>
    ''')
class AppComponent {
  var name = 'TUDo';
}
