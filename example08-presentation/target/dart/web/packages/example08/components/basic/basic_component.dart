import 'package:angular/angular.dart';
import 'package:example08/components/basic/create/create_component.dart';
import 'package:example08/components/basic/login/login_component.dart';
import 'package:example08/components/basic/newest/newest_component.dart';

@Component(
    selector: 'basic-component',
    directives: const [Login, ShowNewest, CreateNews],
    template: ''' 
      <h2>Basic Example</h2>
      <login class="example08block" (usernameOutput)="username=\$event" (passwordOutput)="password=\$event"></login>
      <show-newest class="example08block" [username]="username" [password]="password"></show-newest>
      <create-news class="example08block" [username]="username" [password]="password"></create-news>
    ''')
class BasicComponent {
  String username;
  String password;
}
