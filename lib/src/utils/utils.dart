import 'package:flutter/material.dart';

class Utils {
  Widget buildLoadingWidget() {
    return const Center(
        child: SizedBox(
      height: 30,
      width: 30,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          backgroundColor: Color(0xFFBBCC6E),
        ),
      ),
    ));
  }

  Widget emptyComponent(String msg) {
    return Center(
        child: Text(
      msg,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ));
  }

  Widget buildLoadingWidgetWithText(String msg) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          msg,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            backgroundColor: Color(0xFF02204c),
          ),
        )
      ],
    ));
  }

  void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    ));
  }

  Widget buildPoint() {
    return Container(
      height: 5,
      width: 5,
      decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}
