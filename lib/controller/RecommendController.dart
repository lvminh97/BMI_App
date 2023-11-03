// ignore_for_file: unused_field

import 'package:bmi_app/view/ResultScreen.dart';
import 'package:bmi_app/view/widget/document/heading.dart';
import 'package:bmi_app/view/widget/document/text.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/view/RecommendScreen.dart';

class RecommendController {

  late RecommendScreenState _state;

  RecommendController(this._state);

  List<List<Widget>> recommendationContent = [
    [
      DocumentHeading(text: "Chế độ dinh dưỡng cho người gầy (BMI < 18.5)", level: 6),
      DocumentText(text:
        """
    Với chế độ dinh dưỡng cho người gầy, bạn cần đảm bảo ăn đầy đủ 3 bữa chính với đủ các nhóm chất, thêm vào đó là những món trái cây tráng miệng (sau bữa chính 20 phút) để bổ sung thêm vitamin và khoáng chất. Đối với bữa tối, bạn không nên ăn quá no cũng như không nên ăn nhiều loại thức ăn mà cơ thể khó hấp thụ. 
    Các bữa phụ bổ sung trong chế độ dinh dưỡng cho người gầy cũng phải khoa học và hợp lý. Bạn nên ăn những bữa phụ lúc 9h30, 3h chiều và 9h tối.
        """
      ),
      DocumentHeading(text: "Nguyên tắc cơ bản trong cách ăn uống để tăng cân nhanh ", level: 6),
      DocumentText(text:
      """
    Để xây dựng chế độ dinh dưỡng cho người gầy tăng cân hợp lý, bạn cần dựa trên các nguyên tắc cơ bản sau:
      """
      ),
      DocumentText(text:
      """
    Ăn nhiều bữa, bổ sung bữa ăn phụ
      """,
        fontWeight: FontWeight.bold,
      ),
      DocumentText(text:
      """
    Cơ thể cần được liên tục bổ sung dinh dưỡng trong quá trình tăng cân, vì thế bạn nên bổ sung thêm các bữa phụ thay vì chỉ ăn trong 3 bữa chính. Số lượng bữa phụ trong ngày nên là 2-3 bữa. Thực phẩm sử dụng cho bữa phụ bao gồm các loại sữa, bánh ngọt, các loại hạt...
      """
      ),
      DocumentText(text:
      """
    Kết hợp tập luyện
      """,
        fontWeight: FontWeight.bold
      ),
      DocumentText(text:
      """
    Bổ sung dinh dưỡng, tăng cường các loại thực phẩm tốt phải được kết hợp song song với một chế độ sinh hoạt lành mạnh, khoa học, chế độ tập luyện điều độ. Tập luyện giúp cho cơ thể hấp thu dinh dưỡng hiệu quả hơn đồng thời cải thiện vóc dáng, giúp bạn tăng cân an toàn. Tuy nhiên, bạn chỉ nên lựa chọn các bài tập luyện phù hợp, không nên luyện tập quá sức
      """
      ),
      DocumentHeading(text: "Một số thực phẩm giàu năng lượng có thể giúp bạn tăng cân bao gồm:", level: 6),
      DocumentText(text:
      """
    •	Các loại hạt (hạnh nhân, quả óc chó, hạt mắc ca và đậu phộng).
    •	Trái cây sấy khô (nho khô, chà là, mận khô và các loại khác).
    •	Sữa giàu chất béo (sữa nguyên chất, sữa chua nguyên kem, phô mai và kem).
    •	Chất béo và dầu (dầu ô liu nguyên chất, dầu bơ).
    •	Ngũ cốc (yến mạch, gạo lứt).
    •	Thịt (thịt gà, thịt bò, thịt lợn và thịt cừu; bạn cũng có thể chọn những miếng thịt béo hơn).
    •	Củ (khoai tây, khoai lang và khoai mỡ) và các loại thực phẩm giàu năng lượng khác (sô cô la đen, bơ, bơ đậu phộng, nước cốt dừa)...
      """
      ),
      DocumentHeading(text: "Bí quyết trong chế độ dinh dưỡng cho người gầy giúp tăng cân thành công", level: 6),
      DocumentText(text:
      """
    Bí quyết quan trọng trong chế độ dinh dưỡng cho người gầy tăng cân nhanh là hãy luôn bổ sung sữa vào khẩu phần ăn.
    Bổ sung vào khẩu phần của mình những loại trái cây tốt cho sức khỏe như: bơ, chuối, cam,...
    Với chế độ dinh dưỡng cho người gầy thì ăn 2 chén cơm mỗi bữa là đủ. Tùy theo sức ăn mà có thể gia tăng thêm. Tuy nhiên bạn nên bỏ qua suy nghĩ ăn cơm thật nhiều để mau lên cân. Việc ăn quá nhiều cơm chỉ khiến bạn “mập mỡ”, tốt nhất vẫn là 2 - 3 chén/ khẩu phần ăn.
    Thay đổi món ăn thường xuyên mỗi ngày để không bị “ngán” và tạo động lực ăn uống nhằm tăng cân hiệu quả. Khuyến khích ăn thêm bữa phụ mỗi ngày.
      """
      ),
      DocumentHeading(text: "7 Thực đơn dinh dưỡng cho người gầy tăng cân trong 1 tuần", level: 6),
      DocumentHeading(text: "Ngày 1", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 1 tô phở, 1 quả trứng và 1 ly sữa, trái cây.
    •	Bữa phụ: 1 phần ngũ cốc.
    •	Bữa trưa: 2 chén cơm, canh rau ngót thịt xay, 100g thịt bò xào ớt chuông, trái cây.
    •	Bữa phụ: 1 đĩa trái cây.
    •	Bữa tối: 2 chén cơm, canh xương hầm rau củ, thịt heo xào đậu que, nước ép trái cây.
    •	Bữa phụ: 1 tô miến nhỏ, dĩa trái cây.
      """
      ),
      DocumentHeading(text: "Ngày 2", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 1 dĩa bánh cuốn hoặc 1 dĩa pancake tráng mỏng cuộn thịt, 1 ly sữa, trái cây.
    •	Bữa phụ: 1 phần sinh tố, bánh ngọt.
    •	Bữa trưa: 2 chén cơm, canh giò heo hầm, cá nục chiên, rau luộc hoặc xào, trái cây.
    •	Bữa phụ: 1 phần súp.
    •	Bữa tối: 2 chén cơm, canh cải ngọt nấu nấm, đậu hũ nhồi thịt, trái cây.
    •	Bữa phụ: 1 tô bún nhỏ.
      """
      ),
      DocumentHeading(text: "Ngày 3", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 1 tô bún hoặc 1 tô mỳ 1 ly sữa, trái cây.
    •	Bữa phụ: 1 phần ngũ cốc.
    •	Bữa trưa: 2 chén cơm, canh bí đỏ nấu tôm, thịt bò xào đầu rồng, trái cây.
    •	Bữa phụ: 1 phần bánh mì ngọt, 1 ly sữa.
    •	Bữa tối: 2 chén cơm, canh cua rau đay, đậu hũ dồn thịt chiên giòn, nước ép trái cây.
    •	Bữa phụ: 1 tô miến nhỏ.
      """
      ),
      DocumentHeading(text: "Ngày 4", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 1 dĩa bò bít tết, 1 quả trứng và 1 ly sữa.
    •	Bữa phụ: 1 tô cháo, trái cây.
    •	Bữa trưa: 2 chén cơm, canh khổ qua dồn thịt, cá hồi áp chảo bơ tỏi, trái cây.
    •	Bữa phụ: 1 ly nước ép trái cây.
    •	Bữa tối: 2 chén cơm, canh, 100g thịt bò, rau luộc, trái cây.
    •	Bữa phụ: 1 phần súp.
      """
      ),
      DocumentHeading(text: "Ngày 5", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 1 đĩa cơm sườn hoặc mì xào sườn nướng, 1 ly sữa, trái cây.
    •	Bữa phụ: 1 phần ngũ cốc.
    •	Bữa trưa: 2 chén cơm, canh mồng tơi nấu mướp, tôm sốt chua cay, trái cây.
    •	Bữa phụ: bánh mì ngọt, 1 ly sữa.
    •	Bữa tối: 2 chén cơm, canh chua cá hú, thịt heo viên áp chảo, nước ép trái cây.
    •	Bữa phụ: bánh mì ngọt, trái cây.
      """
      ),
      DocumentHeading(text: "Ngày 6", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 1 tô bún bò hoặc cá hồi nướng bơ tỏi ăn cùng bánh mì, 1 ly sữa, trái cây.
    •	Bữa phụ: 1 ly sinh tố trái cây.
    •	Bữa trưa: 2 chén cơm, thịt kho trứng, canh cải thảo nấu tôm, trái cây.
    •	Bữa phụ: bánh mì ngọt, 1 ly sữa.
    •	Bữa tối: 2 chén cơm, canh đậu hũ nấm, mực xào chua ngọt, nước ép trái cây.
    •	Bữa phụ: bánh mì ngọt, trái cây.
      """
      ),
      DocumentHeading(text: "Ngày 7", level: 7),
      DocumentText(text:
      """
    •	Bữa sáng: 2 ổ bánh mì, 2 trứng ốp la, 1 ly sữa, trái cây.
    •	Bữa phụ: 1 dĩa salad trộn rau củ.
    •	Bữa trưa: 2 chén cơm, cá diêu hồng hấp hành, canh bí ngòi thịt xay, trái cây.
    •	Bữa phụ: bánh mì ngọt, 1 ly sữa.
    •	Bữa tối: 2 chén cơm, canh đậu hũ nấu với hẹ, thịt bò xào bông cải, nước ép trái cây.
    •	Bữa phụ: bánh mì ngọt, trái cây.
      """
      ),
    ],
    [
      DocumentHeading(text: "Lợi ích của việc duy trì chỉ số BMI khoẻ mạnh", level: 6),
      DocumentText(text:
      """
    Tại sao nhiều người lại siêng năng tập luyện gym để có được và duy trì chỉ số BMI chuẩn một lý do hết sức thuyết phục mà chúng ta đều phải công nhận đó chính là khi đạt chỉ số BMI tốt bạn sẽ có được rất nhiều thứ. Một sức khỏe tuyệt vời sẽ giúp bạn tránh xa bệnh tật duy trì tuổi trẻ và đặc biệt bạn sẽ không phải tốn nhiều tiền mua thuốc để trị các bệnh vặt đâu nhé. Vì bạn đã có một BMI tuyệt vời rồi
      """
      ),
      DocumentText(text:
      """
    •	Giảm nguy cơ mắc bệnh tim.
    •	Giảm nguy cơ đột quỵ.
    •	Giảm nguy cơ phát triển một số dạng ung thư.
    •	Kiểm soát bệnh tiểu đường không phụ thuộc insulin.
    •	Giảm căng thẳng lưng và khớp.
    •	Tăng mức năng lượng.
    •	Tối ưu hóa hệ thống miễn dịch.
    •	Giảm nguy cơ loãng xương.
    •	Giảm nguy cơ vô sinh.
    •	Giảm nguy cơ thiếu máu.
      """
      ),
      DocumentHeading(text: "Một số lời khuyên cho bạn để duy trì chỉ số BMI khoẻ mạnh", level: 6),
      DocumentText(text:
      """
    •	Thực hiện ăn uống theo chế độ khoa học tốt cho sức khoẻ.
    •	Hãy lựa chọn thực phẩm lành mạnh. Tránh thực phẩm có chứa đường, chất béo và lượng calo cao.
    •	Ăn nhiều trái cây và rau quả.
    •	Luyện tập hoạt động thể chất ít nhất 3 lần một tuần.
    •	Bắt đầu những thói quen sinh hoạt tốt, chẳng hạn như uống nhiều nước, ngủ đủ giấc,… .
    •	Hạn chế uống rượu bia, các chất chứa cồn và chất kích thích.
    •	Theo dõi cân nặng chính xác của bản thân thường xuyên, tốt nhất là không nên mặc quần áo quá nhiều khi cân
      """
      )
    ],
    [
      DocumentText(text:"Mình gợi ý cho bạn chế độ dinh dưỡng phù hợp với chỉ số BMI của bạn, bạn có thể tham khảo nhé!"),
      DocumentHeading(text: "Chế độ dinh dưỡng phù hợp với người thừa cân- béo phì", level: 6),
      DocumentText(text:
      """
    Người béo phì là do dư thừa năng lượng kéo dài qua chế độ ăn uống, khiến cơ thể tích lũy mỡ quá mức. Để giảm cân, giảm lượng mỡ thừa cần chế độ ăn uống và hoạt động thể lực hợp lý. Cụ thể, cần có chế độ ăn thấp năng lượng, cân đối, ít đường, đủ đạm, vitamin, nhiều rau quả. Từng bước giảm năng lượng trong từng khẩu phần ăn, mỗi tuần giảm khoảng 300 kcal từng ngày so với khẩu phần trước đó, cho đến khi đạt năng lượng tương ứng đến mức BMI. Chẳng hạn:
      """
      ),
      DocumentText(text:
      """
    - BMI từ 25-29,9: Năng lượng đưa vào một ngày là 1.500 kcal.
    - BMI từ 30-34,9: Năng lượng đưa vào một ngày là 1.200 kcal.
    - BMI từ 35-39,9: Năng lượng đưa vào một ngày là 1.000 kcal.
    - BMI ≥ 40: Năng lượng đưa vào một ngày là 800 kcal.
      """
      ),
      DocumentText(text: "Lưu ý: Trong chế độ ăn cần cân chỉnh tỷ lệ năng lượng giữa các chất như sau: 15-16% protein, 12-13% lipid, 71-72% glucid. Do đó, bạn cần:"),
      DocumentText(text:
      """
    - Hạn chế thức ăn béo, ngọt, không nên ăn da, mỡ động vật, nuớc luộc thịt, bánh, kẹo, chè kem..., nên ăn cá nhiều hơn thịt. Hạn chế sử dụng các thực phẩm chế biến sẵn như giò chả, xúc xích, gà rán...
    - Tăng cường rau, trái cây ít ngọt và thực phẩm giàu chất xơ.
    - Uống đủ nước 2-2,5 lít mỗi ngày, có thể bổ sung viên vitamin và khoáng chất.
    - Trà xanh, bưởi, cam, gừng, tỏi, ớt ngọt nên đưa vào thực đơn giúp tăng cường đốt cháy chất béo trong cơ thể.
    - Ăn chậm, nhai kỹ, ăn uống điều độ, không bỏ bữa sáng, không ăn tối sau 20h.
    - Điều chỉnh chế độ sinh hoạt phù hợp, không thức khuya, dậy muộn.
    - Tăng cường hoạt động thể lực, tập thể dục ít nhất 60 phút mỗi ngày, vận động nhằm mục đích tiêu hao năng lượng dự trữ dưới dạng mô mỡ, tăng khối cơ bắp và khối xương qua đó giảm các vùng lỏng lẻo của cơ thể, hạn chế khu vực phát triển của các tế bào mỡ.
      """
      ),
      DocumentHeading(text: "Thực đơn gợi ý phù hợp nhu cầu năng lượng theo chỉ số BMI", level: 6),
      DocumentText(text:
      """
    - BMI từ 25-29,9 ( Thừa cân):  Năng lượng đưa vào một ngày là 1.500 kcal.
    - BMI từ 30-34,9 (béo phì độ 1): Năng lượng đưa vào một ngày là 1.200 kcal.
    - BMI từ 35-39,9 (béo phì độ 2): Năng lượng đưa vào một ngày là 1.000 kcal.
    - BMI ≥ 40 (béo phì độ 3- Nghiêm trọng): Năng lượng đưa vào một ngày là 800 kcal.
      """
      ),
      Table(
        border: TableBorder.all(
          color: Colors.black, 
          width: 1.0
        ),
        children: [
          TableRow(
            children: [
              Text('Cell 1'),
              Text('Cell 2'),
              Text('Cell 3'),
            ]
          ),
          TableRow(
            children: [
              Text('Cell 4'),
              Text('Cell 5'),
              Text('Cell 6'),
            ]
          )
        ],
      ),
      DocumentHeading(text: "Để biết số cân nặng “nên có” của mình, bạn có thể dựa vào công thức tính cân nặng lý tưởng như sau:", level: 6),
      DocumentText(text:
      """
Cân nặng lý tưởng = (chiều cao(cm) - 100)x0,9
Ví dụ: Một người cao 1,5 m (150 cm), áp dụng vào công thức tính như sau:
Cân nặng lý tưởng = (150 - 100 ) x 0,9 = 45 kg.
      """
      )
    ]
  ];

  List<Widget> getRecommendation() {
    double bmi = ResultScreen.bmi;
    if(bmi < 18.5) {
      return recommendationContent[0];
    }
    else if(bmi <= 24.9) {
      return recommendationContent[1];
    }
    else if(bmi <= 29.9) {
      return recommendationContent[2];
    }
    else {
      return recommendationContent[2];
    }
  }

}