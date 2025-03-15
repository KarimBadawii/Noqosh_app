import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/styles_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';
import 'package:noqosh_app/features/chatbot/message_model.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  static const apiKey = "AIzaSyDQ0twodlTT3ZA6_r7eApsgqqpmKNrGxOc";
  final model = GenerativeModel(model: 'gemini-2.0-flash', apiKey: apiKey);
  final List<MessageModel> chat = [];
  TextEditingController messageController = TextEditingController();

  Future<void> sendMessage() async {
    final message = messageController.text;
    setState(() {
      messageController.clear();
      chat.add(
          MessageModel(message: message, isUser: true, time: DateTime.now()));
    });

    final content = [Content.text(message)];

    final response = await model.generateContent(content);

    setState(() {
      chat.add(MessageModel(
          message: response.text ?? "", isUser: false, time: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorManager.secondary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        elevation: 3,
        title: Text(
          "Chat Bot",
          style: getSemiBoldStyle(color: ColorManager.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (context, index) {
                    final message = chat[index];
                    return userPrompt(
                        isUser: message.isUser,
                        message: message.message,
                        date: DateFormat("hh:mm a").format(message.time));
                  })),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: TextField(
                    cursorColor: ColorManager.primary,
                    controller: messageController,
                    style: getRegularStyle(color: ColorManager.black),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorManager.primary),
                            borderRadius: BorderRadius.circular(20.r)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorManager.primary),
                            borderRadius: BorderRadius.circular(20.r)),
                        hintText: "message"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    sendMessage();
                  },
                  child: CircleAvatar(
                    radius: 25.r,
                    backgroundColor: ColorManager.primary,
                    child: Icon(
                      Icons.send,
                      color: ColorManager.black,
                      size: AppSize.s24,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Container userPrompt(
    {required final bool isUser,
    required String message,
    required String date}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(AppPadding.p12),
    margin: EdgeInsets.symmetric(vertical: 15.h)
        .copyWith(left: isUser ? 80.w : 15.w, right: isUser ? 15.w : 80.w),
    decoration: BoxDecoration(
        color: isUser ? ColorManager.primary : ColorManager.white,
        borderRadius: BorderRadius.circular(20.r)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message,
          style: getRegularStyle(color: ColorManager.black),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              date,
              style: getLightStyle(
                  color: isUser ? ColorManager.white : ColorManager.primary),
            )
          ],
        )
      ],
    ),
  );
}
