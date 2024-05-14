import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Authentication',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 400.0,
                      height: 300.0,
                      child: Image.asset(
                        'images/car.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Form(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                fontSize: 25.0,
                              ),
                              controller: textEditingControllerName,
                              validator: (value) {},
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.account_circle_outlined,
                                ),
                                filled: true,
                                fillColor: Colors.indigo[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                hintText: 'Name',
                                contentPadding:
                                    const EdgeInsets.fromLTRB(30.0, 15, 15, 10),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              style: const TextStyle(
                                fontSize: 25.0,
                              ),
                              controller: textEditingControllerEmail,
                              validator: (value) {},
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                ),
                                filled: true,
                                fillColor: Colors.indigo[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                hintText: 'Email',
                                contentPadding:
                                    const EdgeInsets.fromLTRB(30.0, 15, 15, 10),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              style: const TextStyle(
                                fontSize: 25.0,
                              ),
                              controller: textEditingControllerPassword,
                              validator: (value) {},
                              // keyboardType: TextInputType.visiblePassword,
                              // obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.password_outlined,
                                ),
                                filled: true,
                                fillColor: Colors.indigo[50],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                hintText: 'Password',
                                contentPadding:
                                    const EdgeInsets.fromLTRB(30.0, 15, 15, 10),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        (const Color(0xFF0E24A3))),
                                fixedSize: MaterialStateProperty.resolveWith(
                                  (states) => Size(
                                      (MediaQuery.of(context).size.width *
                                          95 /
                                          100),
                                      70),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'or Login with',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/google.png',
                            fit: BoxFit.cover,
                            width: 100.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Image.asset(
                            'images/apple.png',
                            fit: BoxFit.cover,
                            width: 100.0,
                          ),
                        ],
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
