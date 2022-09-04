import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/view/homepage/home_page.dart';
import 'package:spotify_clone/view/mainpage/main_page.dart';
import 'package:spotify_clone/view_model/app_view_model.dart';

import 'constant/app_color.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AppViewModel()),],
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            color: MyAppColor.materialColor,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MainPage(),
          );
        },
      ),
    );
  }
}
