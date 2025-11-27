import 'package:dio/dio.dart';
import 'package:news_app/constants/assets.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  NewsService({required this.categoryName});
  final dio = Dio();
  final String apiKey = 'bab17fc23bc44eefac4eb02353da9f23';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';
  final String categoryName;

  Future<List<NewsModel>> getNews() async {
    Response response = await dio.get(
      baseUrl,
      queryParameters: {
        'country': 'us',
        'apiKey': apiKey,
        'category': categoryName,
      },
    );
    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data['articles'];
    List<NewsModel> arteclesList = [];
    for (var article in articles) {
      arteclesList.add(
        NewsModel(
          title: article['title'],
          description: article['description'] ?? '',
          image: article['urlToImage'] ?? Assets.business1,
        ),
      );
    }
    print(arteclesList);
    return arteclesList;
  }
}

//     try {
//       Response response = await dio.get(
//         baseUrl,
//         queryParameters: {'country': 'us', 'apiKey': apiKey},
//       );
//       Map<String, dynamic> data = response.data;
//       List<dynamic> articles = data['articles'];
//       List<NewsModel> arteclesList = [];
//       for (var article in articles) {
//         arteclesList.add(
//           NewsModel(
//             title: article['title'],
//             description: article['description'],
//             image: article['urlToImage'],
//           ),
//         );
//       }
//       print(arteclesList);
//       return arteclesList;
//     } catch (e) {
//       return [];
//     }
//   }
// }
