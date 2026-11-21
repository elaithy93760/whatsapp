
import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/app_colors.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.message,
    required this.isMe,
  });

  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          isMe ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: isMe ? 100 : 10,
          right: isMe ? 10 : 100,
          top: 10,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isMe ? AppColors.gray : AppColors.green,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(10),
            topRight: const Radius.circular(10),
            bottomLeft: const Radius.circular(10),
            bottomRight: const Radius.circular(10),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
