import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tmstar_firebase/screen/main_home_screen.dart';
// import 'package:google_sign_in/google_sign_in.dart';

String email_input ='' ;
String password_input = '';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인화면"),
      ),
      body: Column(
        children: [
          EmailInput(),
          PasswordInput(),
          LoginButton(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(thickness: 1),
          ),
          RegisterButton(),
        ],
      ),
    );
  }
}

class EmailInput extends StatelessWidget {

  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (email){
        email_input = email;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText:'이메일을 입력하세요.',
            helperText: '',
          ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: TextField(
        onChanged: (password){
          password_input = password;
        },
        obscureText: true,
        decoration: InputDecoration(
          labelText: '비밀번호',
          helperText: 'asdf1234!!',
        ),
      ),
    );
  }
}



class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.05,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () async {
            // 파이어베이스에서 값 비교
            // Todo : 시작시 카운트 어플 참고해서 진행해보기
            print(email_input);
            try {
              final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: '$email_input', // 에딧텍스트로 받은값을 넣고 벨리데이션 진행
                password: '$password_input',
              );
              print(' 로그인 성공 ');
              // 성공 한 후 메인 페이지 이동
              if(credential.user != null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MainHomeScreen()),
                );
              }
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                print('No user found for that email.');
              } else if (e.code == 'wrong-password') {
                print('Wrong password provided for that user.');
              }else {
                print('unknown');
              }
            }
            print('성공');
          },
          child: Text('로그인'),
        ),
      ),
    );
  }
}


class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: (){
        print('회원가입버튼 누름');
      },
      child: Text(
        '이메일로 회원가입하기',
        style: TextStyle(color:theme.primaryColor),
      ),
    );
  }
}

//
//
// Future<UserCredential> signInWithGoogle() async{
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
//
//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );
//
//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
//
// }