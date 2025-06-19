// experience_model.dart

/// Model for content within each experience section (e.g., Responsibilities, Technologies)
class ExperienceContent {
  final String title;
  final String description;

  ExperienceContent({
    required this.title,
    required this.description,
  });
}

/// Main model for each experience entry
class ExperienceModel {
  final String? company;
  final String? role;
  final String? yearAttended;
  final String? description;
  final List<ExperienceContent>? contents;

  ExperienceModel({
    this.company,
    this.role,
    this.yearAttended,
    this.description,
    this.contents,
  });
}
