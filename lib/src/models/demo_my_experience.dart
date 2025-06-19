// demo_experience_data.dart
import 'experience_model.dart';

List<ExperienceModel> demoMyExperiences = [
  ExperienceModel(
    company: "Workcentric Solutions Consulting Inc.",
    role: "Fullstack Mobile & Web Application Developer",
    yearAttended: "Pasig City • 2021 – Present",
    contents: [
      ExperienceContent(
        title: "Responsibilities",
        description: '''
• Build custom mobile and web applications from scratch.
• Maintain and update applications for performance and security.
• Develop reusable code modules.
• Design UI/UX for optimal mobile and web experiences.
• Conduct testing and server-side integration.
• Collaborate closely with project teams.
''',
      ),
      ExperienceContent(
        title: "Technologies Used",
        description:
            "Flutter, Dart, Firebase, Visual Studio Code, Visual LANSA, MySQL",
      ),
    ],
  ),
  ExperienceModel(
    company: "Freelance Mobile Developer",
    role: "Mobile Application Developer",
    yearAttended: "Remote • 2019 – 2021",
    contents: [
      ExperienceContent(
        title: "Responsibilities",
        description: '''
• Developed mobile applications using Flutter and Firebase.
• Designed UI/UX for client apps.
• Delivered full lifecycle development for scalable apps.
''',
      ),
      ExperienceContent(
        title: "Technologies Used",
        description: "Flutter, Dart, Firebase, Google Maps API, Places API",
      ),
    ],
  ),
  ExperienceModel(
    company: "Sonrico",
    role: "Project Supervisor",
    yearAttended: "Paranaque City • 2016 – 2017",
    contents: [
      ExperienceContent(
        title: "Responsibilities",
        description: '''
• Managed team collaboration to resolve issues.
• Provided timely project status updates.
• Delivered projects on schedule through prioritization.
''',
      ),
    ],
  ),
  ExperienceModel(
    company: "Active Wealth Realm Line Corp.",
    role: "Project Coordinator",
    yearAttended: "Teressa, Rizal • 2014 – 2016",
    contents: [
      ExperienceContent(
        title: "Responsibilities",
        description: '''
• Documented and gathered project requirements.
• Managed timelines and adjusted workflows.
• Tracked hours and expenses for budget adherence.
''',
      ),
    ],
  ),
];
