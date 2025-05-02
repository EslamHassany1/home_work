import 'package:final_grocery_app/cubits/sign_up_states.dart';
import 'package:final_grocery_app/model/sign_up_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  validUser(SignUpModel user) {
    emit(SignUpLoadingState());

    Future.delayed(Duration(seconds: 2));
    emit(SignUpSuccessState());
    
  }
}
