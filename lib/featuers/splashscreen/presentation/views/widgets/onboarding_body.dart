
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
  return  Center(
        child: OnBoardingSlider(

          pageBackgroundColor:const Color(0xFF146356) ,
          centerBackground: true,
          headerBackgroundColor:const Color(0xFF146356),
            onFinish: () {
          Navigator.pushNamed(context, 'authscreen');
        },
          finishButtonText: 'Log in',
          finishButtonStyle: const FinishButtonStyle(
            backgroundColor:Color(0xFF20473E),
            

            
            
            
          ),
          skipTextButton: const Text('Skip',style: TextStyle(color: Colors.white),),
          trailing: const Text('Skip',style: TextStyle(color: Colors.white)),
          background: [
      
      Container(color: const Color(0xFF146356),width: double.infinity,height: double.infinity,),
      Container(color: const Color(0xFF146356),width: double.infinity,height: double.infinity,),
      Container(color: const Color(0xFF146356),width: double.infinity,height: double.infinity,)
          
          ],
          totalPage: 3,
          speed: 2,
          pageBodies: [
            Container(
                  color: const Color(0xFF146356),
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:  Column(
                children: <Widget>[
                  Image.network('images/s1.png'),
                    const SizedBox(
                    height:10 ,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width:272,height: 35,
                      child: const Text("Your favorite place to work",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
                  const SizedBox(
                    height:20 ,
                  ),
                
                   const Padding(
                     padding: EdgeInsets.only(left: 30),
                     child: Text('In Shaghaf Co-working space,we provide a place that makes you more productive, enjoyable and comfortable A place made up of different parts',
                        style: TextStyle(color: Color(0xFFFFc100),fontSize: 16,fontWeight: FontWeight.w400),
                        ),
                   ),
                  
                   ],
              ),
            ),
            Container(
              
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:  Column(
                children: <Widget>[
                    Image.network('images/s2.png'),
                      const SizedBox(
                    height:10 ,
                  ),
                  Container(
                      alignment: Alignment.center,

                    width:272,height: 35,
                      child: const Text("Delightful open air",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
                  const SizedBox(
                    height:20 ,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('You can choose a game to play from the many games we have , sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures.',
                    style: TextStyle(color: Color(0xFFFFc100),fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                  ) ],
              ),
            ),
              Container(
                
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:  Column(
                children: <Widget>[
                    Image.network('images/s3.png'),
                      const SizedBox(
                    height:10 ,
                  ),
                  Container(
                      alignment: Alignment.center,
                    width:272,height: 35,
                      child: const Text("Choose your favorite room",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
                  const SizedBox(
                    height:20 ,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('You can find the right room for your current mood, as we have many rooms that meet all needs, You can move between funny room, training room and meeting room',style: TextStyle(color: Color(0xFFFFc100),fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                  ) ],
              ),
            ),
          ],
        ),
      )
    ;
  }
}