import 'package:flutter_bloc/flutter_bloc.dart';

class ImageSliderCubit extends Cubit<int> {
  ImageSliderCubit() : super(0);

  void updateImageIndex(int newIndex) => emit(newIndex);
}