import 'package:angular/angular.dart';
import 'package:example08/components/session/create/create_component.dart';
import 'package:example08/components/session/login/login_component.dart';
import 'package:example08/components/session/newest/newest_component.dart';
import 'package:example08/components/session/todo/list.dart';

@Component(
    selector: 'session-component',
    directives: const [Login, ShowNewest, CreateNews, TodoList],
    template: ''' 
      <h2>Session Example</h2>
      <login class="example08block"></login>
      <div class="alert alert-danger">
        Ignorieren :]
        <show-newest class="example08block"></show-newest>
        <create-news class="example08block"></create-news>
      </div>
      <list-todos class="example08block"></list-todos>
    ''')
class SessionComponent {}
