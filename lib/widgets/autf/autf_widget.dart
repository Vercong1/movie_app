import 'package:flutter/material.dart';
import 'package:movie_app/widgets/main_screen/main_screen_widget.dart';

import '../../Theme/app_button_style.dart';

class AutfWidget extends StatefulWidget {
  AutfWidget({Key? key}) : super(key: key);

  @override
  State<AutfWidget> createState() => _AutfWidgetState();
}

class _AutfWidgetState extends State<AutfWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login to your Acc')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            _HeaderWidget(),
          ],
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  final textStyleHeader = const TextStyle(fontSize: 16, color: Colors.black);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _FormWidget(),
          SizedBox(height: 25),
          Text(
            'Qwesdfdsfssssssssfghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhgjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjfggffffffffffffffhhhhhhhhhhhhhhhhhhsnbssssfvxcvsrtewr',
            style: textStyleHeader,
          ),
          SizedBox(height: 5),
          TextButton(
              style: AppButtinStyle.LinkButton,
              onPressed: () {},
              child: Text('Regisrtred')),
          SizedBox(height: 25),
          Text(
            'tyrghfhgfddddddddddddddrteYfdsfsttttttttttttttttttttttttttttttttttttttttttttttftttdjfdf',
            style: textStyleHeader,
          ),
          SizedBox(height: 5),
          TextButton(
              style: AppButtinStyle.LinkButton,
              onPressed: () {},
              child: Text('Veryfication')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      // Navigator.of(context).pushNamed('/main_screen'); //можно возвращаться на пред экран
      Navigator.of(context).pushReplacementNamed(
          '/main_screen'); // нельзя возвращаться на пред экран
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyleHeader =
        const TextStyle(fontSize: 16, color: Color(0xFF212259));
    final mainColor = const Color(0xFF01B4E4);
    final decorationColumn = const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true);
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(color: Colors.red, fontSize: 17),
          ),
          SizedBox(height: 20),
        ],
        Text('Username', style: textStyleHeader),
        SizedBox(height: 5),
        TextField(
            controller: _loginTextController, decoration: decorationColumn),
        SizedBox(height: 20),
        Text('Password', style: textStyleHeader),
        SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: decorationColumn,
          obscureText: true,
        ),
        SizedBox(height: 25),
        Row(
          children: [
            ElevatedButton(
                onPressed: _auth,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(mainColor),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8))),
                child: Text('Login')),
            SizedBox(width: 30),
            TextButton(
                onPressed: _resetPassword,
                style: AppButtinStyle.LinkButton,
                child: Text('Reset Password'))
          ],
        )
      ],
    );
  }
}
