
import 'package:acharya_university/presentation/widgets/webview_widget.dart';

import 'core_exports.dart';

class AppRouter {
String urls = "";
  static final GoRouter router = GoRouter(
      
    initialLocation: '/auth',
    
    routes: [
      GoRoute(
        name: 'auth',
        path: '/auth',
        builder: (context, state) =>  AuthPage(),
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
          GoRoute(
            
        name: 'webview',
        path: '/webview',
        builder: (context, state) {
           final String url = state.extra as String? ?? 'https://flutter.dev';
        return WebViewScreen(url: url);
        } ,
      ),
    ],
  );
}
