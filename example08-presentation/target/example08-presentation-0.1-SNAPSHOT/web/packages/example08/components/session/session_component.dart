import 'package:angular/angular.dart';
import 'package:example08/components/session/login/login_component.dart';
import 'package:example08/components/session/todo/list.dart';

@Component(
    selector: 'session-component',
    directives: const [Login, TodoList],
    template: ''' 
      <h2>Session Example</h2>
      <login class="example08block"></login>
      <list-todos class="example08block"></list-todos>
    ''')
class SessionComponent {}
