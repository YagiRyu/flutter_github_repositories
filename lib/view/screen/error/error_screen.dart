import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.exception,
  });

  final Exception exception;

  @override
  Widget build(BuildContext context) {
    return Text("Error $exception");
  }
}
