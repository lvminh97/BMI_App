// ignore_for_file: unused_field, prefer_const_literals_to_create_immutables

import 'package:bmi_app/language.dart';
import 'package:bmi_app/view/ResultScreen.dart';
import 'package:bmi_app/view/widget/document/heading.dart';
import 'package:bmi_app/view/widget/document/table.dart';
import 'package:bmi_app/view/widget/document/tablerow.dart';
import 'package:bmi_app/view/widget/document/text.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/view/RecommendScreen.dart';

class RecommendController {

  late RecommendScreenState _state;

  RecommendController(this._state);

  Map<String, List<List<Widget>>> recommendationContent = {
    "vi": [
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
      """,
      textAlign: TextAlign.left,
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left
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
      """,
      textAlign: TextAlign.left,
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
      """,
      textAlign: TextAlign.left,
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
      """,
      textAlign: TextAlign.left,
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
      """,
      textAlign: TextAlign.left,
      ),
      DocumentHeading(text: "Thực đơn gợi ý phù hợp nhu cầu năng lượng theo chỉ số BMI", level: 6),
      DocumentText(text:
      """
    - BMI từ 25-29,9 ( Thừa cân):  Năng lượng đưa vào một ngày là 1.500 kcal.
    - BMI từ 30-34,9 (béo phì độ 1): Năng lượng đưa vào một ngày là 1.200 kcal.
    - BMI từ 35-39,9 (béo phì độ 2): Năng lượng đưa vào một ngày là 1.000 kcal.
    - BMI ≥ 40 (béo phì độ 3- Nghiêm trọng): Năng lượng đưa vào một ngày là 800 kcal.
      """,
      textAlign: TextAlign.left,
      ),
      DocumentTable(
        col: 4,
        row: 1,
        data: [
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Thực đơn cho người béo phì"]),
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Năng lượng 800 KCal"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bữa ăn", "<<bold>>Món ăn", "<<bold>>Số lượng", "<<bold>>Năng lượng (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Sáng", "Khoai từ luộc", "1 củ nhỏ 100g", "98"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Sữa bổ sung canxi", "1 ly 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Táo ta", "3 trái", "27"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Trưa", "Cháo sườn (1 tô nhỏ)", "Thịt sườn heo 20g\nGiá 25g\nDầu 3g", "117"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Thanh long", "1 miếng 50g", "20"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Sữa bổ sung canxi", "1 ly 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "1/2 chén vừa", "100"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Chiều", "Canh bầu", "Tép 27g\nBầu 100g\nDầu 2g", "48"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Đậu que xào thịt bò", "Thịt bò 24g\nĐậu que 30g\nDầu 4g", "96"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Chuối xiêm", "1 trái vừa", "80"]),
          DocumentTableRow(colWidth: [5,1], data: ["<<center>><<bold>>Tổng cộng", "<<bold>>808"]),
          //
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Năng lượng 1000 KCal"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bữa ăn", "<<bold>>Món ăn", "<<bold>>Số lượng", "<<bold>>Năng lượng (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Sáng", "Canh bún", "Bún tươi 70g\nMảng riêu 12g\nChả lụa 9g\nMăng khô 5g\nRau muống", "148"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Xoài", "1/4 trái", "45"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Sữa bổ sung canxi", "1 ly 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "1 chén vừa", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Trưa", "Canh bí đỏ", "Thịt heo 5g\nBí đỏ 80g", "42"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Thịt nạc kho tiêu", "Thịt heo nạc 30g\nDầu 4.5g", "80"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Bắp cải luộc", "Bắp cải 70g", "20"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Chuối xiêm", "1 trái vừa", "54"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "2/3 chén vừa", "150"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Chiều", "Canh rau dền thịt", "Thịt heo 5g\nRau dền 50g", "22"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Lươn xào sả ớt", "Lươn 42g\nDầu 6g\nGia vị", "94"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Mãng cầu xiêm", "1 miếng 80g", "40"]),
          DocumentTableRow(colWidth: [5,1], data: ["<<bold>><<center>>Tổng cộng", "<<bold>>1006"]),
          //
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Năng lượng 1200 KCal"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bữa ăn", "<<bold>>Món ăn", "<<bold>>Số lượng", "<<bold>>Năng lượng (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Sáng", "Phở gà (1 tô nhỏ)", "Bánh phở 80g\nThịt gà 30g\nGiá, rau quế", "241"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Táo tây", "1/2 trái vừa", "53"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Sữa bổ sung canxi", "1 ly 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "1 chén vừa", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Trưa", "Canh khổ qua thịt", "Thịt heo 10g\nKhổ qua 130g", "34"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Cá ngừ kho thơm", "Cá 46g\nThơm 35g\nDầu 4.5g", "90"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Cải thìa luộc", "Cải thìa 63g", "10"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Đu đủ", "1 miếng 180g", "63"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "1 chén vừa", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Canh cải soong", "Thịt heo 10g\nCải soong 70g", "24"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Chiều", "Trứng chưng", "Thịt heo 10g\nTrứng vịt 1/2 quả\nDầu 4.5g", "94"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Su su xào", "Su su 55g\nDầu 4.5g", "50"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Quýt", "1.5 trái vừa", "42"]),
          DocumentTableRow(colWidth: [5,1], data: ["<<bold>><<center>>Tổng cộng", "<<bold>>1212"]),
          //
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Năng lượng 1500 KCal"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bữa ăn", "<<bold>>Món ăn", "<<bold>>Số lượng", "<<bold>>Năng lượng (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Sáng", "Miến gà (1 tô vừa)", "Miến khô 50g\nThịt gà 30g\nMăng khô 5g\nGiá, rau muống", "317"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Bười", "4 múi", "40"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Sữa bổ sung canxi", "1 ly 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "1.5 chén vừa", "300"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Trưa", "Canh chua cá hồi", "Cá nạc 30g\nThơm, cà chua 120g\nDầu 4.5g", "96"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Thịt kho trứng", "Thịt heo nạc 30g\nTrứng 1/2 quả\nDầu 3g", "107"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Rau muống luộc", "Rau muống 100g", "23"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Phụ", "Chôm chôm", "5 trái", "70"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Cơm", "1 chén vừa", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Canh tần ô thịt", "Thịt 10g\nRau tần ô 70g", "24"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Chiều", "Tôm rim", "Tôm 50g\nDầu 6g\nGia vị", "101"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Bông cải, cà rốt xào", "Bông cải 70g\nCà rốt 50g\nDầu 3g", "67"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Ổi", "1 trái vừa", "53"]),
          DocumentTableRow(colWidth: [5,1], isLastRow: true, data: ["<<bold>><<center>>Tổng cộng", "<<bold>>1509"]),
        ]
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
    ],
    "en": [
    [
      DocumentHeading(text: "Nutrition for skinny people (BMI <18.5)", level: 6),
      DocumentText(text:
        """
    With a diet for skinny people, you need to make sure to eat 3 main meals with all the basic nutrient groups mentioned above, in addition to fruit desserts (20 minutes after the main meal) to supplement. vitamins and minerals. For dinner, you should not eat too much and should not eat a lot of foods that are difficult for your body to absorb.
    Additional snacks in the diet for thin people must also be scientific and reasonable. You should eat snacks at 9:30 am, 3 pm and 9 pm.
        """
      ),
      DocumentHeading(text: "Basic principles in eating to gain weight quickly", level: 6),
      DocumentText(text:
      """
    To build a reasonable nutritional regimen for thin people to gain weight, you need to rely on the following basic principles:
      """
      ),
      DocumentText(text:
      """
    Eat many meals, add extra meals
      """,
        fontWeight: FontWeight.bold,
      ),
      DocumentText(text:
      """
    The body needs to continuously supplement nutrients during the weight gain process, so you should add extra meals instead of just eating 3 main meals. The number of snacks per day should be 2-3 meals. Foods used for snacks include milk, cakes, nuts, etc.
      """
      ),
      DocumentText(text:
      """
    Combine exercise
      """,
        fontWeight: FontWeight.bold
      ),
      DocumentText(text:
      """
    Nutritional supplementation and strengthening of good foods must be combined with a healthy, scientific lifestyle and moderate exercise regimen. Exercise helps the body absorb nutrients more effectively while improving your physique, helping you gain weight safely. However, you should only choose appropriate exercises and not overdo them
      """
      ),
      DocumentHeading(text: "Some energy-dense foods that can help you gain weight include:", level: 6),
      DocumentText(text:
      """
    •	Nuts (almonds, walnuts, macadamia nuts and peanuts).
    •	dried fruits (raisins, dates, prunes and others).
    •	High-fat dairy (whole milk, full-fat yogurt, cheese, and ice cream).
    •	Fats and oils (virgin olive oil, avocado oil).
    •	Cereals (oats, brown rice).
    •	Meat (chicken, beef, pork, and lamb; you can also choose fattier cuts of meat).
    •	Root vegetables (potatoes, sweet potatoes and yams) and other energy-dense foods (dark chocolate, avocado, peanut butter, coconut milk)...
      """,
      textAlign: TextAlign.left,
      ),
      DocumentHeading(text: "Nutrition tips for skinny people to help gain weight successfully", level: 6),
      DocumentText(text:
      """
    The important secret in the diet for skinny people to gain weight quickly is to always add milk to the diet.
    Add healthy fruits to your diet such as avocados, bananas , oranges,...
    With a diet for skinny people, eating 2 cups of rice per meal is enough. Depending on your appetite, you can add more. However, you should ignore the thought of eating a lot of rice to quickly gain weight. Eating too much rice will only make you "fat", the best is still 2 - 3 cups/serving.
    Change dishes regularly every day to avoid getting "bored" and create motivation to eat to gain weight effectively. Encourage eating extra meals every day.
      """
      ),
      DocumentHeading(text: "7 Nutritional menus for skinny people to gain weight in 1 week", level: 6),
      DocumentHeading(text: "Day 1", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 1 bowl of pho, 1 egg and 1 glass of milk, fruit.
    •	Snack: 1 portion of cereal.
    •	Lunch: 2 cups of rice, spinach soup with ground meat, 100g beef stir-fried with bell pepper, fruit.
    •	Snack: 1 plate of fruit.
    •	Dinner: 2 cups of rice, bone broth with vegetables, stir-fried pork with string beans, fruit juice.
    •	Snack: 1 small bowl of vermicelli, fruit plate.
      """,
      textAlign: TextAlign.left
      ),
      DocumentHeading(text: "Day 2", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 1 plate of rice rolls or 1 plate of thinly coated pancake with meat, 1 glass of milk, fruit.
    •	Snack: 1 smoothie, cake.
    •	Lunch: 2 cups of rice, stewed pork trotters soup, fried mackerel, boiled or stir-fried vegetables, fruit.
    •	Snack: 1 portion of soup.
    •	Dinner: 2 cups of rice, bok choy soup with mushrooms, tofu stuffed with meat, fruit.
    •	Snack: 1 small bowl of noodles.
      """,
      textAlign: TextAlign.left
      ),
      DocumentHeading(text: "Day 3", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 1 bowl of vermicelli or 1 bowl of noodles, 1 glass of milk, fruit.
    •	Snack: 1 portion of cereal.
    •	Lunch: 2 cups of rice, pumpkin soup with shrimp, stir-fried beef with dragon head, fruit.
    •	Snack: 1 piece of sweet bread, 1 glass of milk.
    •	Dinner: 2 cups of rice, jute crab soup, crispy fried tofu with meat, fruit juice.
    •	Snack: 1 small bowl of vermicelli.
      """,
      textAlign: TextAlign.left
      ),
      DocumentHeading(text: "Day 4", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 1 plate of steak, 1 egg and 1 glass of milk.
    •	Snack: 1 bowl of porridge, fruit.
    •	Lunch: 2 cups of rice, bitter melon soup with meat, sauteed salmon with garlic butter, fruit.
    •	Snack: 1 glass of fruit juice.
    •	Dinner: 2 cups of rice, soup, 100g beef, boiled vegetables, fruit.
    •	Snack: 1 portion of soup.
      """,
      textAlign: TextAlign.left
      ),
      DocumentHeading(text: "Day 5", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 1 plate of rice with ribs or fried noodles with grilled ribs, 1 glass of milk, fruit.
    •	Snack: 1 portion of cereal.
    •	Lunch: 2 cups of rice, spinach soup with luffa, shrimp with spicy and sour sauce, fruit.
    •	Snack: sweet bread, 1 glass of milk.
    •	Dinner: 2 cups of rice, sour fish soup, pan-fried pork balls, fruit juice.
    •	Snack: sweet bread, fruit.
      """,
      textAlign: TextAlign.left
      ),
      DocumentHeading(text: "Day 6", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 1 bowl of beef noodles or grilled salmon with garlic butter served with bread, 1 glass of milk, fruit.
    •	Snack: 1 glass of fruit smoothie.
    •	Lunch: 2 cups of rice, braised meat with eggs, cabbage soup with shrimp, fruit.
    •	Snack: sweet bread, 1 glass of milk.
    •	Dinner: 2 cups of rice, mushroom tofu soup, sweet and sour stir-fried squid, fruit juice.
    •	Snack: sweet bread, fruit.
      """,
      textAlign: TextAlign.left
      ),
      DocumentHeading(text: "Day 7", level: 7),
      DocumentText(text:
      """
    •	Breakfast: 2 loaves of bread, 2 fried eggs, 1 glass of milk, fruit.
    •	Snack: 1 plate of salad mixed with vegetables.
    •	Lunch: 2 cups of rice, steamed red tilapia with onions, zucchini soup with ground meat, fruit.
    •	Snack: sweet bread, 1 glass of milk.
    •	Dinner: 2 cups of rice, tofu soup cooked with chives, stir-fried beef with broccoli, fruit juice.
    •	Snack: sweet bread, fruit.
      """,
      textAlign: TextAlign.left
      ),
    ],
    [
      DocumentHeading(text: "Benefits of maintaining a healthy BMI", level: 6),
      DocumentText(text:
      """
    Why do many people diligently exercise in the gym to get and maintain a standard BMI? There is a very convincing reason that we all have to admit is that when you achieve a good BMI, you will get a lot of things. . Great health will help you stay away from diseases and maintain youth and especially you will not have to spend a lot of money on medicine to treat minor illnesses. Because you already have a great BMI.
      """
      ),
      DocumentText(text:
      """
    •	Reduce the risk of heart disease.
    •	Reduce the risk of stroke.
    •	Reduces the risk of developing some forms of cancer.
    •	Control of non-insulin-dependent diabetes.
    •	Reduce back and joint stress.
    •	Increase energy levels.
    •	Optimize the immune system.
    •	Reduce the risk of osteoporosis.
    •	Reduce the risk of infertility.
    •	Reduces the risk of anemia.
      """,
      textAlign: TextAlign.left,
      ),
      DocumentHeading(text: "Some tips for you to maintain a healthy BMI", level: 6),
      DocumentText(text:
      """
    •	Follow a scientific diet that is good for your health.
    •	Choose healthy foods. Avoid foods that contain sugar, fat and high calories.
    •	Eat lots of fruits and vegetables.
    •	Practice physical activity at least 3 times a week.
    •	Start good living habits, such as drinking lots of water, getting enough sleep, etc.
    •	Limit drinking alcohol, alcohol and stimulants.
    •	Monitor your exact weight regularly, it's best not to wear too much clothing when weighing yourself
      """,
      textAlign: TextAlign.left,
      )
    ],
    [
      DocumentText(text:"I suggest you a nutritional regimen suitable for your BMI, you can refer to it!"),
      DocumentHeading(text: "Nutrition suitable for overweight and obese people", level: 6),
      DocumentText(text:
      """
    Obesity is caused by prolonged excess energy through the diet, causing the body to accumulate excessive fat. To lose weight and reduce excess fat, you need a reasonable diet and physical activity. Specifically, it is necessary to have a low-energy, balanced diet, low in sugar, enough protein, vitamins, and lots of vegetables and fruits. Gradually reduce the energy in each diet, each week reducing about 300 kcal per day compared to the previous diet, until the corresponding energy reaches the BMI level. Such as:
      """
      ),
      DocumentText(text:
      """
    - BMI from 25-29.9: Energy intake per day is 1,500 kcal.
    - BMI from 30-34.9: Energy intake per day is 1,200 kcal.
    - BMI from 35-39.9: Energy intake per day is 1,000 kcal.
    - BMI ≥ 40: Energy intake per day is 800 kcal.
      """,
      textAlign: TextAlign.left,
      ),
      DocumentText(text: "Note: In the diet, it is necessary to balance the energy ratio between substances as follows: 15-16% protein, 12-13% lipid, 71-72% glucid. Therefore, you need:"),
      DocumentText(text:
      """
    - Limit fatty and sweet foods, do not eat skin, animal fat, meat broth, cakes, candy, ice cream..., eat more fish than meat. Limit the use of processed foods such as sausages, sausages, fried chicken...
    - Increase vegetables, less sweet fruits and foods rich in fiber.
    - Drink enough water 2-2.5 liters per day, you can supplement with vitamin and mineral tablets.
    - Green tea, grapefruit, orange, ginger, garlic, and sweet chili should be included in the menu to help increase fat burning in the body.
    - Eat slowly, chew thoroughly, eat in moderation, don't skip breakfast, don't eat dinner after 8 p.m.
    - Adjust your lifestyle accordingly, don't stay up late or get up late.
    - Increase physical activity, exercise at least 60 minutes a day, exercise to consume stored energy in the form of fat tissue, increase muscle mass and bone mass thereby reducing muscle laxity body, limiting the growth area of fat cells.    
      """,
      textAlign: TextAlign.left,
      ),
      DocumentHeading(text: "Suggested menu suitable for energy needs according to BMI index", level: 6),
      DocumentText(text:
      """
    - BMI from 25-29.9 (Overweight): Energy intake per day is 1,500 kcal.
    - BMI from 30-34.9 (obesity level 1): Energy intake per day is 1,200 kcal.
    - BMI from 35-39.9 (obesity level 2): Energy intake per day is 1,000 kcal.
    - BMI ≥ 40 (obesity level 3 - Severe): Energy intake per day is 800 kcal.
      """,
      textAlign: TextAlign.left,
      ),
      DocumentTable(
        col: 4,
        row: 1,
        data: [
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Menu for obese people"]),
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Energy 800 Kcalories"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Meal", "<<bold>>Dish", "<<bold>>Quantity", "<<bold>>Energy (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bright", "Boiled yam", "1 small tuber 100g", "98"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Calcium-fortified milk", "1 glass 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Vietnam's Apple", "3 fruits", "27"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Lunch", "Rib porridge (1 small bowl)", "Pork ribs 20g\nSprouts 25g\nOil 3g", "117"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Dragon fruit", "1 piece 50g", "20"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Calcium-fortified milk", "1 glass 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "1/2 medium bowl", "100"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Afternoon", "Gourd soup", "Shrimp 27g\nGourd 100g\nOil 2g", "48"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "String beans stir-fried with beef", "Beef 24g\nGreen beans 30g\nOil 4g", "96"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Siamese banana", "1 medium fruit", "80"]),
          DocumentTableRow(colWidth: [5,1], data: ["<<center>><<bold>>Total", "<<bold>>808"]),
          //
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Energy 1000 Kcalories"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Meal", "<<bold>>Dish", "<<bold>>Quantity", "<<bold>>Energy (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bright", "Vermicelli soup", "Fresh vermicelli 70g\nFried rice  12g\nPork sausage 9g\nDried bamboo 5g\nSpinach", "148"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Mango", "1/4 fruit", "45"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Calcium-fortified milk", "1 glass 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "1 medium bowl", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Lunch", "Pumpkin soup", "Pork 5g\nPumpkin 80g", "42"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Lean meat braised with pepper", "Lean pork 30g\nOil 4.5g", "80"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Boiled cabbage", "Cabbage 70g", "20"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Siamese banana", "1 medium fruit", "54"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "2/3 medium bowl", "150"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Afternoon", "Amaranth and meat soup", "Pork 5g\nAmaranth 50g", "22"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Fried eel with chilli", "Eel 42g\nOil 6g\nSpice", "94"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Soursop", "1 piece 80g", "40"]),
          DocumentTableRow(colWidth: [5,1], data: ["<<bold>><<center>>Total", "<<bold>>1006"]),
          //
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Energy 1200 Kcalories"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Meal", "<<bold>>Dish", "<<bold>>Quantity", "<<bold>>Energy (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bright", "Chicken pho (1 small bowl) (1 small bowl)", "Pho cake 80g\nChicken 30g\nSprouts, basil", "241"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Apple", "1/2 medium fruit", "53"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Calcium-fortified milk", "1 glass 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "1 medium bowl", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Lunch", "Bitter melon soup with meat", "Pork 10g\nBitter melon 130g", "34"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Fragrant braised tuna", "Fish 46g\nPineapple 35g\nOil 4.5g", "90"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Boiled bok choy", "Bok choy 63g", "10"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Papaya", "1 piece 180g", "63"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "1 medium bowl", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Watercress soup", "Pork 10g\nWatercress 70g", "24"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Afternoon", "Distillation eggs", "Pork 10g\n1/2 duck egg\nOil 4.5g", "94"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Stir-fried chayote", "Chayote  55g\nOil 4.5g", "50"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Tangerine", "1.5 medium fruit", "42"]),
          DocumentTableRow(colWidth: [5,1], data: ["<<bold>><<center>>Total", "<<bold>>1212"]),
          //
          DocumentTableRow(colWidth: [6], data: ["<<bold>>Energy 1500 Kcalories"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Meal", "<<bold>>Dish", "<<bold>>Quantity", "<<bold>>Energy (KCal)"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Bright", "Chicken vermicelli (1 medium bowl)", "Dry vermicelli 50g\nChicken 30g\nDried bamboo 5g\nSprouts, water spinach", "317"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Grapefruit", "4 packs", "40"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Calcium-fortified milk", "1 glass 200ml", "111"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "1.5 medium bowl", "300"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Lunch", "Salmon sour soup", "Lean fish 30g\nPineapple, tomato 120g\nOil 4.5g", "96"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Braised meat with eggs", "Lean pork 30g\n1/2 egg\nOil 3g", "107"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Boiled spinach", "Water spinach 100g", "23"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<bold>>Extra", "Rambutan", "5 fruits", "70"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["", "Rice", "1 medium bowl", "200"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Asparagus soup with meat", "Meat 10g\nVegetables 70g", "24"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>><<bold>>Afternoon", "Braised shrimp", "Shrimp 50g\nOil 6g\nSpice", "101"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Stir-fried broccoli and carrots", "Broccoli  70g\nCarrot 50g\nOil 3g", "67"]),
          DocumentTableRow(colWidth: [1,2,2,1], data: ["<<merge>>", "Guava", "1 medium fruit", "53"]),
          DocumentTableRow(colWidth: [5,1], isLastRow: true, data: ["<<bold>><<center>>Total", "<<bold>>1509"]),
        ]
      ),
      DocumentHeading(text: "To know your \"should\" weight, you can rely on the following formula to calculate your ideal weight:", level: 6),
      DocumentText(text:
      """
Ideal weight = (height (cm) - 100)x0,9
For example: A person is 1.5 m (150 cm) tall, apply the following formula:
Ideal weight = (150 - 100 ) x 0.9 = 45 kg.
      """
      )      
    ]
    ]
  };

  List<Widget> getRecommendation() {
    double bmi = ResultScreen.bmi;
    if(bmi < 18.5) {
      return recommendationContent[Language.cur]![0];
    }
    else if(bmi <= 24.9) {
      return recommendationContent[Language.cur]![1];
    }
    else if(bmi <= 29.9) {
      return recommendationContent[Language.cur]![2];
    }
    else {
      return recommendationContent[Language.cur]![2];
    }
  }

}