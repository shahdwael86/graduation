import 'package:flutter/material.dart';

class ProfileRibon extends StatelessWidget {
  
  String leadingIcon;
  String title;
  Function()? onTap;
   ProfileRibon({super.key,required this.leadingIcon,required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          ImageIcon(AssetImage(leadingIcon),color: Colors.white,),
          const SizedBox(width: 10,),
          Text(title,style:
            const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400
            )
            ,),
          const Spacer(),
          InkWell(
              onTap: onTap,
              child: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 22,)),
        ],
      ),
    );
  }
}
