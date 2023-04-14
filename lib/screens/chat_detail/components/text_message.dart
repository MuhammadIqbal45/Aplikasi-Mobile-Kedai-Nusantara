import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/chat/models/chat_message.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin * 0.75,
          vertical: kDefaultPaddin / 2,
        ),
        decoration: BoxDecoration(
          color: Palette.bg1.withOpacity(message.isSender ? 1 : 0.08),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          message.text,
          style: TextStyle(
            color: message.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1!.color,
          ),
        ));
  }
}
