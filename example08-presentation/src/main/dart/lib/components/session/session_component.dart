import 'package:angular/angular.dart';
import 'package:example08/components/session/login/login_component.dart';

@Component(
    selector: 'session-component',
    directives: const [Login],
    template: ''' 
      <h2>Session Example</h2>
      <login class="example08block"></login>
    ''')
class SessionComponent {}
