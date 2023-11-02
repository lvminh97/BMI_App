// ignore_for_file: unused_field

import 'package:bmi_app/view/ResultScreen.dart';

class ResultController {

  late ResultScreenState _state;

  ResultController(this._state);

  String getCategory(double bmi) {
    String res = "";
    if(bmi < 18.5) {
      res = "Thiếu cân";
    }
    else if(bmi <= 24.9) {
      res = "Bình thường";
    }
    else if(bmi <= 29.9) {
      res = "Thừa cân";
    }
    else {
      res = "Béo phì";
    }
    return res;
  }

  String getShortAdvice(double bmi) {
    String res = "";
    if(bmi < 18.5) {
      res = "Bạn nên xem lại chế độ ăn uống hoặc siêng ăn thêm bạn nhé";
    }
    else if(bmi <= 24.9) {
      res = "Bạn nên tiếp tục duy trì nhé";
    }
    else if(bmi <= 29.9) {
      res = "Bạn đang thừa cân rồi, điều chỉnh chế độ ăn uống và luyện tập chăm chỉ hơn nhé";
    }
    else {
      res = "Bạn đang trong nhóm này thì khá nguy hiểm nhé. Bạn cần xem lại chế độ dinh dưỡng, tham khảo ý kiến của bác sĩ cũng như cần thuê riêng một bạn PT để hướng dẫn cách tập luyện sao cho hiệu quả nhất";
    }
    return res;
  }

}