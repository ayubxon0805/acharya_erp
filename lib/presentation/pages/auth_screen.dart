

import '../../core/router/core_exports.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isVisible = false;
  bool isEmptyv=false;
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: Stack(
        children: [
          /// Background image
          Container(
            
decoration: BoxDecoration(
  color: Colors.black,
  image: DecorationImage(
    opacity: 0.6,
    fit: BoxFit.cover,
    image: AssetImage('assets/images/campus.jpg',),
    
    )
),
            width: maxWidth,
            height: maxHeight, 
          ),

          Positioned(
            top: maxHeight * 0.3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: Container(
                width: maxWidth,
                height: maxHeight * 0.7,
      
                padding:  EdgeInsets.all(maxWidth*0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Logo
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/icons/logo.jpg",
                        width: 80,
                        height: 80,
                      ),
                    ),
                    const SizedBox(height: 20),

               
 InputWidget(title: 'User Id', icon: Icon(Icons.person), labelText: "User Id",),

                    const SizedBox(height: 15),
 InputWidget(title: 'Password', icon: Icon(Icons.lock), isVisible: true,labelText: "Password",suffixIcon: IconButton(
  onPressed: () {
    
  }
  ,icon: Icon(Icons.visibility),),),
             

                    /// Forgot Password
                    TextButton(
                      onPressed: () {
                        print('pressed');
                      },
                      child: const Text("Forgot Password?",style: TextStyle(
                        fontWeight: FontWeight.w500
                        ,color: Colors.white,fontSize: 18)),
                    ),

                    /// Login Button
                    SizedBox(
                      
                      width: maxWidth * 0.6,
                      height: maxHeight*0.06,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 26, 31, 33),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          context.go('/home');
                        },
                        child: const Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    ),

                SizedBox(height: maxHeight*0.1),

                    /// Bottom Text
                    const Text(
                      "Where the world \ncomes to learn",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 35,
                         color: Color.fromARGB(255, 117, 137, 146),
                         fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
