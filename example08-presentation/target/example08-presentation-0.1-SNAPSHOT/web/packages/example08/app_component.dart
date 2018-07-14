import 'package:angular/angular.dart';
import 'package:example08/components/session/session_component.dart';

@Component(
    selector: 'my-app',
    directives: const [SessionComponent],
    template: ''' 
      <h1>{{name}}</h1>
      <session-component></session-component>
    ''')
class AppComponent {
  var name = 'TUDo';
}
