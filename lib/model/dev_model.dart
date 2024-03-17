class DevModel{
  final String nama;
  final String no_wa;
  final String email;
  final String bio;
  final List<String> hobbies;
  final List<SkillAndProgress> skillAndProgress;

  DevModel({
    required this.nama,
    required this.no_wa,
    required this.email,
    required this.bio,
    required this.hobbies,
    required this.skillAndProgress,
  });
}

// type data (object) untuk skill dan progress
class SkillAndProgress{
  final String name;
  final double progress;
  SkillAndProgress({
    required this.name,
    required this.progress,
  });
}
