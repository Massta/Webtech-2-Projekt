import 'package:angular/angular.dart';
import 'package:example08/components/session/session_component.dart';

@Component(
    selector: 'my-app',
    directives: const [SessionComponent],
    template: ''' 
      <h1>TUDo</h1>
      Bitte in der gr8en app einloggen <3
      <session-component></session-component>
    ''')
class AppComponent {
  var name = 'TUDo';
}
