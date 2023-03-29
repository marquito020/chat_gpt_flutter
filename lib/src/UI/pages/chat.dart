import 'package:flutter/material.dart';

import '../../services/openai_services.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String response = '';
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* backgroundColor: const Color.fromRGBO(35, 169, 72, 1), */
      backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
      /* backgroundColor: Color(0x121212), */
      /* appBar: AppBar(
        title: const Text('Chat GPT'),
        backgroundColor: const Color.fromARGB(255, 18, 84, 36),
      ), */
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            /* Text "Chat GPT" */
            const Text(
              'Chat GPT',
              style: TextStyle(
                color: Color.fromRGBO(0, 200, 224, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 68, 66, 66),
              ),
              child: TextField(
                controller: _controller,
                maxLines: null,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 200, 224, 1),
                ),
                onPressed: () async {
                  var res = await sendTextCompletionRequest(_controller.text);
                  response = res['choices'][0]['text'];
                  setState(() {});
                },
                child: const Text('Enviar Solicitud',
                    style: TextStyle(
                      color: Color.fromRGBO(18, 18, 18, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
            SizedBox(
              width: 500,
              child: Text(
                response,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
