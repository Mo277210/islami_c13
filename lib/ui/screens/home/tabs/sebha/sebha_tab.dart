import 'package:flutter/material.dart';
import 'package:islami_c13_sun/ui/utils/app_colors.dart';
import 'package:islami_c13_sun/ui/utils/asset_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  int count =0;
  double anagle=0;
  int index=0;
List<String> list=['سبحان الله','الحمد لله ', 'الله اكبر'];
  @override
  Widget build(BuildContext context) {

    return  Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            Expanded(
                child: Image.asset("assets/images/spaheBackground.png",fit: BoxFit.fill,)),
          ],
        ),
        Image.asset(AssetsManager.islamiLogo),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(left:MediaQuery.of(context).size.width * 0.45,top:MediaQuery.of(context).size.height*.21 ),
                  height: 86,
                  width: 73,
                  child: Image.asset("assets/images/Groupspahe.png")),
              GestureDetector(
                onTap: onTap,
                child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height* 0.3),
                    child: Transform.rotate(
                        angle: anagle,
                        child: Image.asset("assets/images/SebhaBody.png"))),
              ),
              Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height* 0.44,left:MediaQuery.of(context).size.width*0.30 ),
                  child:Text(list[index],style: TextStyle(fontSize: 36,color:AppColors.white,fontWeight: FontWeight.w700 ),)),
              Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height* 0.55,left:MediaQuery.of(context).size.width*0.40 ),
                  child:Text( count.toString(),style: TextStyle(fontSize: 36,color:AppColors.white,fontWeight: FontWeight.w700 ),)),
            ],
          ),
        )



      ],

    );
  }
  onTap(){
    anagle+=5;
    count++;
    setState(() {
      if(count==33){
        count=0;
        index++;

      }
      if(index==3){

        index=0;
      }

    });
  }
}
