import "package:flutter/material.dart";
import "package:flutter_application02/presentation/widgets/chat/HerMessageBubble.dart";
import "package:flutter_application02/presentation/widgets/chat/MyMessageBubble.dart";
import "package:flutter_application02/presentation/widgets/shared/message_field_box.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/25191680?v=4'),
          ),
        ),
        title: const Text('Mi crush 😍'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const MyMessageBubble()
                          : const HerMessageBubble();
                    })),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
