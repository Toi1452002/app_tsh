import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Thần số học'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String giaithich= '';
  TextEditingController ngay= TextEditingController();
  TextEditingController thang= TextEditingController();
  TextEditingController nam= TextEditingController();


  @override
  Widget build(BuildContext context) {
    void sochudao(){
      String tscd = ngay.text + thang.text + nam.text;
      var nscd = tscd.split('');
      final int sum = nscd.fold<int>(0, (prev, value) => prev + (int.tryParse(value ?? '0') ?? 0));
      if (sum<12){
        setState((){_counter=sum;});
        print(sum);
      }else {
         var cv =sum.toString();
         var ncsd2 =cv.split('');
         final int sum2 = ncsd2.fold<int>(0, (prev, value) => prev + (int.tryParse(value ?? '0') ?? 0));
          print(sum2);
         setState((){_counter=sum2;});
      }
      switch(_counter){
        case 0:
          setState(() {giaithich = "";}); break;
        case 2:
          setState(() {giaithich ="Đây là con số đặc biệt và rất hiếm, vì chỉ có duy nhất một số tổng 20 mới cho ra Con số chủ đạo 2. Do đó, trên thực tế những người có Con số chủ đạo 2 ít hơn hẳn so với những Con số chủ đạo khác. Số 2 nhìn chung là người nhạy cảm, khiêm tốn, đầy thiện chí giúp đỡ người khác. Họ có khả năng hòa giải, giàu lòng trắc ẩn và có tính nghệ sĩ. Chính do có yếu tố nghệ sĩ, nên đôi khi họ không thể chịu được áp lực khi làm việc cường độ cao và nhiều sức ép. Họ sẽ phát huy tốt khả năng của mình với các lĩnh vực như hội họa, viết lách nhưng phải đặt dưới sự dẫn dắt của trực giác chuẩn xác mà họ có.";}); break;
        case 3:
          setState(() {giaithich ="Điểm nhấn của những người Số 3 là phần tư duy và lý luận. Đối với những người Số 3, đầu óc nhanh nhạy,giỏi đánh giá, suy nghĩ và lên kế hoạch nên sẽ giúp họ dễ dàng thành công trong công việc. Họ cũng có óc hài hước khá thông minh, nhưng dễ gặp các vấn đề trong cuộc sống hôn nhân nếu không kiểm soát tốt các mặt tiêu cực của bản thân. Nhưng khi sống kém tích cực, người Số 3 dễ để lại ấn tượng là người trịch thượng, gia trưởng hoặc thích chỉ đạo người khác.";}); break;
        case 4:
          setState(() {giaithich ="Người Số 4 có thiên hướng về “thực tế” hoặc “ thực hành” - họ thích bắt tay vào việc hơn là ngồi bàn luận về các giá trị việc đó mang lại. Chính sự thực tế này giúp những người Số 4 luôn tiến về phía trước. Họ thuộc nhóm những người nguyên tắc và đáng tin cậy nhất. Người Số 4 thường chìm đắm trong công việc và xao lãng những việc mang đến sự cân bằng cho cuộc sống của họ, đặc biệt là cuộc sống gia đình. Nên để cân bằng cuộc sống, họ cần phát triển hơn về yếu tố tinh thần và tình cảm.Trong các hoạt động thể chất người Số 4 có thể nói là khó ai sánh bằng. Họ có thể thành công rực rỡ khi theo đuổi con đường thể thao chuyên nghiệp. Nhưng khi gặp các vấn đề liên quan đến khía cạnh tinh thần hay tâm linh thì họ thường rất thiếu kiên nhẫn.";}); break;
        case 5:
          setState(() {giaithich ="Người có Con số chủ đạo là 5 thường có khuynh hướng cố gắng thoát khỏi sự trói buộc, thường nhạy cảm và có nhu cầu bày tỏ cảm xúc. Phần lớn người Số 5 cảm thấy khó làm việc theo giờ giấc quy định nghiêm ngặt. Họ có trực giác rất tốt, với cảm xúc sâu sắc và tư duy nghệ thuật mạnh mẽ. . Yêu tự do, thích phiêu lưu, giàu lòng yêu thương nhưng lại không chịu đựng được khi đặt trong khuôn khổ. Ba đặc trưng của Con số chủ đạo 5 là: yêu tự do, thích diễn xuất và có khiếu nghệ thuật.";}); break;
        case 6:
          setState(() {giaithich ="Chúng ta sẽ thấy người Số 6 ưu tú trong rất nhiều lĩnh vực sáng tạo, từ ở nhà cho đến đấu trường quốc tế. Họ mang một trọng trách lớn trong cuộc sống, thứ đòi hỏi ở họ sự tận tâm sâu sắc. Tất cả những người Số 6 đều có khả năng thiên phú này, nhưng họ thường bị gánh nặng trách nhiệm làm cho bất an và lo lắng thái quá, từ đó mắc kẹt trong áp lực căng thẳng.";}); break;
        case 7:
          setState(() {giaithich ="Một trong những đặc điểm độc đáo ở những người Số 7 là họ được học hỏi theo cách riêng của mình. Không dừng lại ở việc tiếp nhận các chỉ dẫn tối thiểu từ người khác, người Số 7 khát khao được học bằng cách tự trải nghiệm. Họ tự tin, nhân văn và sâu sắc. Người số 7 rất thích hợp các hoạt động liên quan đến ngành luật hoặc giảng dạy. Chính vì điều này, người Số 7 thường phải hy sinh ít nhất một trong ba khía cạnh của cuộc sống: sức khỏe, tình yêu, tiền tài. ";}); break;
        case 8:
          setState(() {giaithich ="Những người mang Số 8 chủ đạo là những người coi sự độc lập là một trong những yếu tố quan trọng hàng đầu trong cuộc sống. Họ có thể là những người khá phức tạp, sở hữu cá tính mạnh, sức mạnh và trí tuệ hơn người. Nhưng về khả năng biểu đạt lòng biết ơn và sự trân trọng thì người Số 8 cảm thấy rất khó thể hiện. Họ cũng là người cực kỳ đáng tin cậy nhưng ít chịu bày tỏ cảm xúc của mình, khó biểu đạt lòng biết ơn và sự trân trọng với người khác. Tuy nhiên về nội tâm họ vẫn rất quan tâm đến những kém may mắn hoặc khó khăn trong cuộc sống.";}); break;
        case 9:
          setState(() {giaithich ="So với những nhóm khác, người mang Con số chủ đạo 9 sẽ nhân gấp ba lần yếu tố: hoài bão, trách nhiệm và lý tưởng. Họ luôn đặt yếu tố con người lên hàng đầu. Người Số 9 luôn tự cảm thấy mình đầy trách nhiệm có lý tưởng và luôn hướng về yếu tố nhân văn. Trong cuộc sống họ rất nghiêm túc và không giỏi nhìn người cho lắm. Họ cũng không giỏi quản lý tiền bạc, và cũng khó tiết kiệm được tiền.. Họ phù hợp với nghệ thuật và các lĩnh vực nhân văn hơn là với khoa học hay thương mại.";}); break;
        case 10:
          setState(() {giaithich ="Cuộc sống của người Số 10 có hai đặc điểm nổi trội: khả năng thích nghi và khả năng thay đổi nên họ có thể hoạt động trong nhiều lĩnh vực khác nhau. Tính linh hoạt của họ có thể hỗ trợ người khác rất nhiều trong việc thích ứng với các thay đổi trong cuộc sống. Khi sống tích cực, họ tự tin, hoà nhã thông minh là người rất quảng giao nên dễ đạt được thành công; nhưng khi sống tiêu cực cái tôi quá lớn, quá tự tin thì, họ có thể là những cá nhân lạc lối, bất an và lao đao trên đường đời, dẫn đến nhiều phiền phức trong cuộc sống.";}); break;
        case 11:
          setState(() {giaithich ="Con số chủ đạo 11 có một trường năng lượng tâm linh đặc biệt mạnh mẽ, giúp những người mang Con số chủ đạo này có tiềm năng phi thường để phát triển nhận thức ở Thể Siêu thức. Đáng tiếc là phần lớn những người Số 11 lại không đủ khả năng phát huy tiềm năng đó. Họ cũng trung thực và giàu lòng trắc ẩn, yêu vẻ đẹp gắn liền với các giá trị văn hóa. Họ không có thế mạnh trong kinh doanh cũng như không quản lý tiền bạc giỏi.";}); break;
      }
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child:
                Text("Ngày"),
                ),
               Expanded(child: TextField(
                 controller: ngay,
                   keyboardType: TextInputType.number,
               )),
                Expanded(child:
                Text("Tháng"),
                ),
                Expanded(child: TextField(
                    controller: thang,
                    keyboardType: TextInputType.number,
                )),
                Expanded(child:
                Text("Năm"),
                ),
                Expanded(child: TextField(
                    controller: nam,
                    keyboardType: TextInputType.number,
                ))
              ],
            ),
            SizedBox(height: 20),
            Text("Con số chủ đạo của bạn là"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text('$giaithich'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sochudao,
        child: const Icon(Icons.search),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



