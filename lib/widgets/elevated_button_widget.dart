
import 'package:flutter/material.dart';
import 'package:ios_pentor/utlis/app_colors.dart';


class AppWidgetElevatedButton extends StatelessWidget {
  final String text;
  double? border_size;
  void Function() onpressed;
  Color? color_text;
  Color? background_color;
  Color side_color;
  double height_size;
  double width_size;
  double fontSize;
  int value=0;
  IconData? iconData;
  Color? colorIcon;
  double? sizeIcon;
  double? widthRow;

  AppWidgetElevatedButton({this.widthRow =120,  this.sizeIcon = 20 , this.colorIcon = Colors.black , this.iconData = Icons.add_shopping_cart, this.value = 0, this.fontSize = 20 , this.width_size = double.infinity, required this.text , required this.onpressed , this.border_size=5, this.color_text,this.background_color,this.side_color=AppColors.BASIC_BROWN_COLOR, this.height_size=55 ,  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onpressed,
      clipBehavior: Clip.antiAlias,
      child: value == 0 ? Padding(
        padding: const EdgeInsets.all(2),
        child: Text(text, style: TextStyle(fontFamily: 'POP',
            color: color_text,
            fontSize: fontSize,
            fontWeight: FontWeight.w400
        ),),
      ) : SizedBox(
        width: widthRow,
        child: Row(
          children: [
            Text(
              text,style: TextStyle(fontFamily: 'POP',
                color: color_text,
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
            ),),
            SizedBox(width: 5,),
            Icon( iconData, color: colorIcon,size: sizeIcon,)
          ],
        ),
      ),
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(width_size , height_size)),
          backgroundColor: MaterialStateProperty.all(background_color),
          elevation:MaterialStateProperty.all(0) ,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(border_size!),
                side: BorderSide(color:side_color)
              )
          )
      ),
    );
  }
}