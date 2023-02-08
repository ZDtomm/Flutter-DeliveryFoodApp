import 'package:e_food/Utils/colors.dart';
import 'package:e_food/Utils/dimensions.dart';
import 'package:e_food/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool flag = true;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > 246) {
      firstHalf = widget.text.substring(0, 246);
      secondHalf = widget.text.substring(246, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.length == ""
            ? Text(widget.text,
                style: TextStyle(
                    fontSize: Dimensions.font16, color: AppColors.paraColor))
            : Column(
                children: [
                  Text(
                    flag ? firstHalf + "..." : widget.text,
                    style: TextStyle(
                        fontSize: Dimensions.font16,
                        color: AppColors.paraColor,
                        height: 1.8),
                  ),
                  SizedBox(
                    height: Dimensions.height5,
                  ),
                  InkWell(
                    onTap: () => setState(() {
                      flag = !flag;
                    }),
                    child: Row(
                      children: [
                        SmallText(
                          text: "Show More",
                          color: AppColors.mainColor,
                        ),
                        Icon(
                          flag ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                  )
                ],
              ));
  }
}
