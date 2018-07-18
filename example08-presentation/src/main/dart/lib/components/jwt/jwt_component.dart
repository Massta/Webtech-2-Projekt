import 'package:angular/angular.dart';
import 'package:example08/components/jwt/todo/list.dart';
import 'package:example08/components/jwt/todo/create.dart';
import 'package:example08/components/jwt/login/register_component.dart';
import 'package:example08/components/jwt/login/login_component.dart';

@Component(
    selector: 'jwt-component',
    directives: const [Login, TodoList, Register, TodoCreate],
    template: ''' 
      <register class="example08block"></register>
      <login class="example08block" (tokenOutput)="token=\$event"></login>
      <hr/>
      <list-todos class="example08block" [token]="token"></list-todos>
      <create-todo class="example08block" [token]="token"></create-todo>
    ''')
class JWTComponent {
  String token;
}