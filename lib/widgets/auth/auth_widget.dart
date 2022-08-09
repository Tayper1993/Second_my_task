import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/app_button_style.dart';

import '../../theme/color_theme.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login to your accout'),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          const Text(
              'Suddenly they saw a very tall young man with a big black dog. They were nervous and walked past him as fast as they could to the lift. The door of the lift opened and Jenny and Robert got in. Before the doors closed the man and the dog jumped in – three people and one big black dog in the lift',
              style: textStyle),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: AppButtonStyle.linkButton,
            child: const Text('Register'),
          ),
          const SizedBox(height: 18),
          const Text(
              'First thing next morning they took their room key to the desk and gave it to the woman.',
              style: textStyle),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: AppButtonStyle.linkButton,
            child: const Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  static const textStyle = TextStyle(
    fontSize: 16,
    color: Color(0xFF212529),
  );

  static const textFieldDecorator = InputDecoration(
    isCollapsed: true,
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  );

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Username', style: textStyle),
      const SizedBox(height: 1),
      const TextField(decoration: textFieldDecorator),
      const SizedBox(height: 12),
      const Text('Password', style: textStyle),
      const TextField(decoration: textFieldDecorator, obscureText: true),
      const SizedBox(height: 15),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colorButton),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8))),
              child: const Text('Login')),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            style: AppButtonStyle.linkButton,
            child: const Text('Reset Password'),
          ),
        ],
      )
    ]);
  }
}
