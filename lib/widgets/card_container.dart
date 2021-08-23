import 'package:flutter/material.dart';

///Global widget of card container.
class CardContainer extends StatelessWidget {
  // ignore: public_member_api_docs
  const CardContainer({Key? key, required this.chill}) : super(key: key);

  ///Child widget insede of card container
  final Widget chill;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsetsDirectional.all(20),
        decoration: _createCardShape(),
        child: chill,
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
            offset: Offset(0, 5),
          ),
        ],
      );
}
