import 'dart:convert';
import 'package:http/http.dart' as http;

String apiKey = "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";

Future sendTextCompletionRequest(String message) async {
  String baseUrl = "https://api.openai.com/v1/completions";
  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer $apiKey"
  };
  var res = await http.post(Uri.parse(baseUrl),
      headers: headers,
      body: json.encode({
        "model": "text-davinci-003",
        "prompt": message,
        "max_tokens": 200,
        "temperature": 0,
        "top_p": 1,
        "n": 1,
        "stream": false,
        "logprobs": null,
      }));
  if (res.statusCode == 200) {
    return jsonDecode(res.body);
  }
}
