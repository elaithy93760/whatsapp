import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/app_colors.dart';
import 'package:whats_app/core/theme/right_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        leading: Icon(Icons.arrow_back_ios_new, color: AppColors.white),
        title: Row(
          children: [
            Image.asset('assets/images/profile.png', width: 35, height: 35),
            SizedBox(width: 7),
            Text(
              "John Safwat",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Image.asset("assets/icons/Phone.png", width: 24, height: 24),
          SizedBox(width: 15),
          Image.asset("assets/icons/video.png", width: 24, height: 24),
          SizedBox(width: 15),
          Image.asset("assets/icons/More-vertical.png", width: 24, height: 24),
          SizedBox(width: 15),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                opacity: 0.1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Message(message: "Hello!", isMe: false),
                    Message(message: "Hello!", isMe: true),
                    Message(
                      message: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                      isMe: false,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, top: 10, right: 100),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Image.asset('assets/images/image.png'),
                      ),
                    ),
                    Message(
                      message: "What a Great Content Tp learn Flutter",
                      isMe: true,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.green),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/Camera.png",
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: AppColors.white),
                                hintText: "Type a message",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 55),
                          Image.asset(
                            "assets/icons/Send.png",
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/icons/Mic.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
