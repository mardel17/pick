import 'package:flutter/material.dart';
import 'package:pick/utils/const.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.title,
    this.isActive,
    this.callback,
  }) : super(key: key);

  final String title;
  final bool? isActive;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: (isActive ?? false)
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [COLOR.BUTTON_ORANGE, COLOR.BUTTON_YELLOW])
              : null,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight:
                (isActive ?? false) ? FontWeight.w700 : FontWeight.normal,
            color: (isActive ?? false) ? COLOR.BLACK : Colors.black,
          ),
        ),
      ),
    );
  }
}
