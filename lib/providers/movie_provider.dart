import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api.dart';
import '../models/movie_state.dart';
import '../services/movie_service.dart';


final defaultState = MovieState(
    isLoad: false,
    isError: false,
    errorMessage: '',
    movies: [],
    page: 1,
    isLoadMore: false
);

final popularProvider = StateNotifierProvider<PopularMovie, MovieState>((ref) => PopularMovie(defaultState));
final topRatedProvider = StateNotifierProvider<TopRatedMovie, MovieState>((ref) => TopRatedMovie(defaultState));
final UpcomingProvider = StateNotifierProvider<UpcomingMovie, MovieState>((ref) => UpcomingMovie(defaultState));

class PopularMovie extends StateNotifier<MovieState>{
  PopularMovie(super.state ){
    getMovieByCategory();
  }

  Future<void> getMovieByCategory() async{
    state = state.copyWith(isLoad:state.isLoadMore ? false : true, isError: false);
    final response = await MovieService.getMovieByCategory(api: Api.popularMovie, page: state.page);
    response.fold(
            (l) {
          state = state.copyWith(isLoad: false, isError: true, errorMessage: l);
        },
            (r){
          state = state.copyWith(isLoad: false, isError: false, movies: [...state.movies, ...r]);
        }
    );
  }

  Future<void> loadMore() async{
    state = state.copyWith(isLoadMore: true, page: state.page + 1);
    getMovieByCategory();
  }



}



class TopRatedMovie extends StateNotifier<MovieState>{
  TopRatedMovie(super.state ){
    getMovieByCategory();
  }

  Future<void> getMovieByCategory() async{
    state = state.copyWith(isLoad: true, isError: false);
    final response = await MovieService.getMovieByCategory(api: Api.topRatedMovie, page: 1);
    response.fold(
            (l) {
          state = state.copyWith(isLoad: false, isError: true, errorMessage: l);
        },
            (r){
          state = state.copyWith(isLoad: false, isError: false, movies: r);
        }
    );
  }

}



class UpcomingMovie extends StateNotifier<MovieState>{
  UpcomingMovie(super.state ){
    getMovieByCategory();
  }

  Future<void> getMovieByCategory() async{
    state = state.copyWith(isLoad: true, isError: false);
    final response = await MovieService.getMovieByCategory(api: Api.upcomingMovie, page: 1);
    response.fold(
            (l) {
          state = state.copyWith(isLoad: false, isError: true, errorMessage: l);
        },
            (r){
          state = state.copyWith(isLoad: false, isError: false, movies: r);
        }
    );
  }

}