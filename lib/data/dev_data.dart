import 'package:mobile_mrogramming/model/dev_model.dart';

class DevData{
  DevData._();

  static DevModel devData = DevModel(
    nama: "Fikry Aiman",
    no_wa: "0895414778578",
    email: "aimanmunadhil489@gmail.com",
    bio: "Saya adalah mahasiswa dari Masoem University yang merupakan pemula pada bidang mobile programming.",
    hobbies: <String>[
      "Gaming",
      "Futsal",
      "Coding"
    ],
    skillAndProgress: <SkillAndProgress>[
      SkillAndProgress(name: "Software Developer", progress: .7),
      SkillAndProgress(name: "Web Developer", progress: 1),
      SkillAndProgress(name: "Flutter Developer", progress: .9),
    ]
  );
}