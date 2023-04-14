import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/chat/models/chat_message.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      // height: 30,
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin * 0.75,
        vertical: kDefaultPaddin / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Palette.bg1.withOpacity(
          message.isSender ? 1 : 0.1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : Palette.bg1,
          ),
          Expanded(
            // ignore: sized_box_for_whitespace
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender
                        ? Colors.white
                        : Palette.bg1.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: message.isSender ? Colors.white : Palette.bg1,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: TextStyle(
                fontSize: 12, color: message.isSender ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}
