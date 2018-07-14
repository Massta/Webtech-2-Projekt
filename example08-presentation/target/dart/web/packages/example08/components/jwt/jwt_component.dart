import 'package:angular/angular.dart';
import 'package:example08/components/jwt/create/create_component.dart';
import 'package:example08/components/jwt/login/login_component.dart';
import 'package:example08/components/jwt/newest/newest_component.dart';

@Component(
    selector: 'jwt-component',
    directives: const [Login, ShowNewest, CreateNews],
    template: ''' 
      <h2>JWT Example</h2>
      <login class="example08block" (tokenOutput)="token=\$event"></login>
      <show-newest class="example08block" [token]="token"></show-newest>
      <create-news class="example08block" [token]="token"></create-news>
    ''')
class JWTComponent {
  String token;
}
