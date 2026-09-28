import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tuneflow/core/constants/app_colors.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surfacePrimary,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container()
              ),
          Expanded(
            flex: 6,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/Logo.svg', height: 44, width: 44,colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Millions of songs. \n Free on Spotify.', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 30),),
                      SizedBox(
                        height: 30,
                      ),
                      SignUpButton(title: 'Sign up free', onTap: (){}, buttonColor: AppColors.surfaceProduct, borderWidth: 0),
                      SizedBox(height: 12,),
                      SignUpButton(title: 'Continue with Google ', onTap: (){}, img:'assets/images/Logo.svg', buttonColor: AppColors.surfacePrimary, borderWidth: 1 ),
                      SizedBox(height: 12,),
                      SignUpButton(title: 'Continue with Facebook', onTap: (){}, img:'assets/images/Logo.svg', buttonColor: AppColors.surfacePrimary, borderWidth: 1 ),
                      SizedBox(height: 12,),
                      SignUpButton(title: 'Continue with Apple', onTap: (){}, img:'assets/images/Logo.svg', buttonColor: AppColors.surfacePrimary, borderWidth: 1),
                      SizedBox(height: 26,),
                      Text('Log in', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 14),)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
@override
Widget SignUpButton({
  required String title,
  String? img,
  required VoidCallback onTap,
  required Color buttonColor,
  required double borderWidth
}){
  return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        side: BorderSide(
          color: Colors.grey,
          width: borderWidth
        )
      ),
      child: Row(
        children: [
          if(img != null)
            SvgPicture.asset(img, height: 24, width: 24,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),),
          Spacer(),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 14,)),
          Spacer()
        ],
      ),
  );
}
