import 'package:flutter/material.dart';
import 'package:logsheet_mobile/common/app_theme.dart';
import 'package:logsheet_mobile/ui/widgets/boarding_header_widget.dart';
import 'package:logsheet_mobile/ui/widgets/powered_by_pln_widget.dart';

import '../home/screen/home_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BoardingHeaderWidget(
              title1: 'Let\'s',
              title2: 'Sign In',
              title3: 'With your account',
            ),
            _buildLoginForm(textTheme),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: PoweredByPlnWidget(),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Padding _buildLoginForm(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Digital Logsheet PLTU App',
            style: textTheme.bodySmall!.copyWith(
              color: AppTheme.primaryBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email or username',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 47,
                child: TextFormField(
                  focusNode: _focusNodes[0],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: AppTheme.darkYellow,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: _focusNodes[0].hasFocus
                          ? AppTheme.darkYellow
                          : Colors.grey,
                    ),
                    hintText: 'example@gmail.com',
                    hintStyle: textTheme.bodySmall,
                  ),
                  style: textTheme.bodySmall,
                  textAlignVertical: TextAlignVertical.bottom,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Password',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 47,
                child: TextFormField(
                  focusNode: _focusNodes[1],
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: AppTheme.darkYellow,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: _focusNodes[1].hasFocus
                          ? AppTheme.darkYellow
                          : Colors.grey,
                    ),
                    hintText: 'password',
                    hintStyle: textTheme.bodySmall,
                  ),
                  style: textTheme.bodySmall,
                  textAlignVertical: TextAlignVertical.bottom,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  bottom: 16,
                ),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                        ..pop()
                        ..push(
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                    },
                    child: Text(
                      'Login',
                      style: textTheme.bodyLarge!
                          .copyWith(color: AppTheme.darkYellow),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
