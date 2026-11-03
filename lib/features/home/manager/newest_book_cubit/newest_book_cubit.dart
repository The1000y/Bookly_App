import 'package:bookly_app/features/home/data/model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  HomeRepo homeRepo;
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        return emit(NewestBookFailure(failure.errorMessage));
      },
      (success) {
        return emit(NewestBookSuccess(success));
      },
    );
  }
}
