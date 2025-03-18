
import 'core/router/core_exports.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
         debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
  
    );
  }
}

