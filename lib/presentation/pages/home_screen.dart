import '../../core/router/core_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed('notifications');
            },
            icon: Icon(Icons.notifications),
          ),
        ],
        title: ImageIcon(
          AssetImage("assets/icons/applogo.png"),
          size: 180,
          color: AppColors.mainColor,
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
