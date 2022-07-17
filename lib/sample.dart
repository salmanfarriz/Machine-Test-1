import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sam extends StatelessWidget {
  const Sam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Container(
        color: Colors.amber,
        height: 150,
        width: 150,
      ),
      ),
    );
  }
}
