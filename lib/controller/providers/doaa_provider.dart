import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quran_project/constant/hive_const.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';
import '../../constant/images_constant.dart';

class DoaaProvider extends ChangeNotifier {

  bool checkClick  = false;
  changeCheck({required bool state} ){
    if(checkClick != state){
      checkClick = state;
      notifyListeners();
    }

  }
  List<DoaaAddedModel> doaaAdded = [] ;

    addInDoaaAddedList(DoaaAddedModel doaa) async{


      var   doaaBox = Hive.box<DoaaAddedModel>(HiveConst.doaaAddedBox);
      await    doaaBox.add(doaa);
      notifyListeners()   ;

    }

    readDoaaFromHive( )  {
      var   doaaBox = Hive.box<DoaaAddedModel>(HiveConst.doaaAddedBox);
doaaAdded  = doaaBox.values.toList();
notifyListeners();

    }


    final List doaa = [
    {
      "image": ImageConstant.azanIcon,
      "text":" اللهمّ إنّي أسألك فهم النبيّين، وحفظ المرسلين والملائكة المقرّبين، برحمتك يا أرحم الرّاحمين، اللهمّ اجعل ألسنتنا عامرة بذكرك، وقلوبنا بخشيتك، وأسرارنا بطاعتك، إنّك على كلّ شيءٍ قدير، وحسبي الله ونعم الوكيل",
      "name": "دعاء الدراسه"
    },
    {
      "image": ImageConstant.azanIcon,
      "text":"اللهم إني أحبه حبا يجهله هو وتعلمه أنت، يا رب بقدر حبي له اسعده واحفظه ولا تريني فيه بأسا يبكيني. اللهم وفق حبيبي اللهم لا سهل إلا ما جعلته سهلا اللهم اجعل الصعب سهلا ميسرا لحبيبي. اللهم إني أسألك لحبيبي توفيقا يلازم خطاه وتيسيرا لما يخاف تعسيره يارب اجعل له من التوفيق والراحة نصيب",
      "name": "دعاء الحب"
    },
    {
      "image":  ImageConstant.azanIcon,
      "text":"اللهم بك أستعين وعليك أتوكل، اللهم ذلل لي صعوبة أمري، وسهل لي مشقته، وارزقني الخير كله أكثر مما أطلب، واصرف عني كل شر رب اشرح لي صدري ويسر لي أمري يا كريم. يا رب لا تدع أمرًا في صدري ٳلا حللته لي، ولا حلمًا سكن في قلبي طويلًا  ٳلا ويسّرته لي. اللهم أحسن عاقبتنا في الأمور كلها، وأجرنا من خزي الدنيا وعذاب الآخرة",
      "name": "دعاء الكسل",
    },
    {
      "image":  ImageConstant.azanIcon,
      "text":
      "اللهم أسعدني في أبسط تفاصيل حياتي و قرب لي الخير حيث كان. ... اللهم أسعدني سعاده لا نهايه لها. يارب بشرني بشاره فرح اللهم اسعدني سعاده ابكي من جمالها وافتح لي ابواب الخير. اللهم أسعدني ، وأشرح صدري و أرح قلبي اللهم إني أستودعك راحتي فإجعلني أسعد خلقك",
      "name": "دعاء السعاده"
    },
    {
      "image": ImageConstant.azanIcon ,
      "text":
      "يا عزيز أعزني، ويا كافي اكفني، ويا قوي قوني، ويا لطيف الطف بي في أموري كلها والطف بي فيما نزل، اللهم إني أسألك سلامًا ما بعده كدر، ورضى ما بعده سخط، وفرحًا ما بعده حزن، اللهم املأ قلبي بكلّ ما فيه الخير لي، اللهم اجعل طريقي مسهلًا  وأيامي القادمة أفضل من سابقاتها",
      "name": "دعاء الحزن"
    },
  ];
}