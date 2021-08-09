import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'news.dart';

enum NewsAction {
  Fetch,
  Delete,
}

class NewsBloc {
  final _stateStreamController = StreamController<List<Article>>();

  StreamSink<List<Article>> get _stateNewsSink => _stateStreamController.sink;
  Stream<List<Article>> get stateNewsStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<NewsAction>();

  StreamSink<NewsAction> get eventNewsSink => _eventStreamController.sink;
  Stream<NewsAction> get _eventNewsStream => _eventStreamController.stream;

  NewsBloc() {
    _eventNewsStream.listen((event) async {
      if (event == NewsAction.Fetch) {
        try {
          var news = await getNews();
          _stateNewsSink.add(news.articles!);
        } on Exception {
          _stateNewsSink.addError('something went wrong ..');
        }
      }
    });
  }

  getNews() async {
    var client = http.Client();
    var newsModel;
    try {
      var url = Uri.parse(
          'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=c34a7b5883ff4d4087f74cf4d2890c35');
      var response = await client.get(url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }

  void dispose() {
    _stateStreamController.close();
    _eventStreamController.close();
  }
}
