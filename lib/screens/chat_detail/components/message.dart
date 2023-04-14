import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/chat/models/chat_message.dart';
import 'package:kedai_nusantara/screens/chat_detail/components/audio_message.dart';
import 'package:kedai_nusantara/screens/chat_detail/components/text_message.dart';
import 'package:kedai_nusantara/screens/chat_detail/components/video_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    this.message,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          // ignore: dead_code
          break;
        // ignore: no_duplicate_case_values
        case ChatMessageType.audio:
          // ignore: prefer_const_constructors
          return AudioMessage(message: message);
          // ignore: dead_code
          break;
        case ChatMessageType.video:
          // ignore: prefer_const_constructors
          return VideoMessage();
          // ignore: dead_code
          break;
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPaddin),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            const SizedBox(width: kDefaultPaddin / 2),
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({Key? key, required this.status}) : super(key: key);
  final MessageStatus status;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;
          // ignore: dead_code
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
          // ignore: dead_code
          break;
        case MessageStatus.viewed:
          return Palette.bg1;
          // ignore: dead_code
          break;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: kDefaultPaddin / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
