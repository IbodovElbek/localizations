import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localizations/Pages/Home_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale("en","US"),
        Locale("ja","JP"),
        Locale("ko","KR"),
        Locale("ru","RU"),
        Locale("uz","UZ"),
        Locale("fr","FR"),
      ],
      path: "assets/translations",
      fallbackLocale: Locale("en","US"),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
