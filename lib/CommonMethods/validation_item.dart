import 'package:amplify/ColorHelper/colorHelper.dart';
import 'package:amplify/FontsHelper/fontHelper.dart';
import 'package:amplify/ImageHelper/imageHelper.dart';
import 'package:flutter/material.dart';

class ValidationItem extends StatefulWidget {
   const ValidationItem(this.title, this.valid, {Key? key}) : super(key: key);

  final String title;
  final bool valid;

  @override
  _ValidationItemState createState() => _ValidationItemState();
}

class _ValidationItemState extends State<ValidationItem>
    with TickerProviderStateMixin {
  AnimationController? controller;
  AnimationController? strikeController;
  Animation<double>? spaceWidth;
  Animation<double>? strikePercent;

  @override
  void didUpdateWidget(ValidationItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.valid != widget.valid) {
      if (widget.valid) {
        _playAnimation(true);
      } else {
        _playAnimation(false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    debugPrint("Init State");
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    strikeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    spaceWidth = Tween<double>(begin: 8, end: 12)
        .animate(CurvedAnimation(parent:controller!, curve: Curves.easeOut));

    strikePercent = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent:strikeController!, curve: Curves.easeOut));

    spaceWidth?.addListener(() {
      setState(() {});
    });

    strikePercent?.addListener(() {
      setState(() {});
    });
  }

  Future<void> _playAnimation(bool strikeIn) async {
    try {
      if (strikeIn) {
        strikeController?.forward().orCancel;
      } else {
        strikeController?.reverse().orCancel;
      }

      await controller?.forward().orCancel;
      await controller?.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            // const SizedBox(
            //   width: 32,
            // ),
            // Container(
            //   width: 1,
            //   decoration: const BoxDecoration(color: Colors.transparent),
            // ),
            SizedBox(
              width: spaceWidth?.value,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomPaint(
                  foregroundPainter: StrikeThroughPainter(strikePercent!.value),
                  child: Row(
                    children: [
                      Image.asset(ImageHelper.close,width:16,height:16),
                      const SizedBox(width:4),
                      Text(widget.title,
                          style: _getValidateStyle(widget.valid)),
                    ],
                  )),
            ),
            const SizedBox(
              width: 16,
            )
          ],
        ),
      ),
    );
  }

  TextStyle _getValidateStyle(bool validation) {
    return TextStyle(
        fontWeight: FontWeight.normal,
        color: (validation) ? ColorHelper.redColor : ColorHelper.redColor,
        fontSize: 18,
        fontFamily:FontManager.poppinsRegular,
        decoration: null);
  }
}

class StrikeThroughPainter extends CustomPainter {
  StrikeThroughPainter(this.percent);

  double percent;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromLTWH(0, (size.height / 2) - 2, size.width * percent, 2),
        Paint()..color = ColorHelper.greenColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}