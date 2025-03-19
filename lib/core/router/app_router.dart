import 'core_exports.dart';

class AppRouter {
  String urls = "";
  static final GoRouter router = GoRouter(
    initialLocation: '/auth',

    routes: [
      GoRoute(
        name: 'auth',
        path: '/auth',
        builder: (context, state) => AuthPage(),
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
        },
      ),
      GoRoute(
        name: 'mycalendar',
        path: '/mycalendar',
        builder: (context, state) => const MyCalendarPage(),
      ),
      GoRoute(
        name: 'myprofile',
        path: '/myprofile',
        builder: (context, state) => const MyProfilePage(),
      ),
      GoRoute(
        name: 'notifications',
        path: '/notifications',
        builder: (context, state) => const NotificationPage(),
      ),
    ],
  );
}
