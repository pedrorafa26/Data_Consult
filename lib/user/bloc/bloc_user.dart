import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:data_consult/user/repository/auth_repository.dart';

class UserBloc implements Bloc{

  final _auth_repository = AuthRepository();

  //Casos de uso de la aplicacion o del objeto user
  //1. SignIn a la aplicacion con Google
  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  
  @override
  void dispose() {

  }
  
}