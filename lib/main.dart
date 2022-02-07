import 'package:pin_code/utils/template.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PinCodeBloc(),
      child: ScreenUtilInit(
        designSize: const Size(360, 720),
        builder: () => MaterialApp(
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              data: MediaQuery.of(context),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Pin Code',
          home: PinCodePage(),
        ),
      ),
    );
  }
}
