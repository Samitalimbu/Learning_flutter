// import 'package:dio/dio.dart';
//
// class VideoProvider{
//   Future<List<String>>getVideoKey() async{
//     final dio= Dio();
//     tyr{
//       final response =await dio.get('https://api.themoviedb.org/3/movie/{movie_id}/videos',queryParameters:{
//         'api_key':apikey
//       });
//       final data =(resonse.data['results'] as List).map((e) => e['key'] as String).toList();
//       return data;
//     }on DioError catch (err){
//       throw '${err.response}';
//     }
//   }
// }