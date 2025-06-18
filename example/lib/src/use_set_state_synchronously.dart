import 'package:flutter/material.dart';

class UseSetStateSynchronously extends StatefulWidget {
  const UseSetStateSynchronously({super.key});

  @override
  State<UseSetStateSynchronously> createState() =>
      _UseSetStateSynchronouslyState();
}

class _UseSetStateSynchronouslyState extends State<UseSetStateSynchronously> {
  String message = 'Initial message';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        String fromServer = await Future.delayed(Duration(seconds: 1), () {
          return 'Message from server';
        });

        // LINT
        setState(() {
          message = fromServer;
        });
      },
      child: Text(message),
    );
  }
}
