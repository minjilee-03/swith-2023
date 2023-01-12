import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'global/dio_client.dart';
import 'global/theme/theme.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

// registerProviders(DioClient dioClient) => [
//       ChangeNotifierProvider(
//         create: (_) => ListProvider(dioClient: dioClient),
//       ),
//     ];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dioClient = DioClient();
    return ScreenUtilInit(
      designSize: SwithSize.mobileSize,
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) => const SwithApp(),
    );
  }
}

class SwithApp extends StatefulWidget {
  const SwithApp({super.key});

  @override
  State<SwithApp> createState() => _SwithAppState();
}

class _SwithAppState extends State<SwithApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SKP Wallet',
        theme: ThemeData(
          scaffoldBackgroundColor: SwithColors.white,
          bottomAppBarColor: SwithColors.white,
        ),
        initialRoute: SwithRoutes.list,
        getPages: SwithPages.pages,
      );
}
