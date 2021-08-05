import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var invert;
  var busy;

  var text;
  Function func;

  LoadingButton({
    @required this.busy,
    @required this.text,
    this.invert = false,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            height: 60,
            margin: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: invert
                      ? Colors.white.withOpacity(0.8)
                      : Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontFamily: "Big Shouders Display",
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
