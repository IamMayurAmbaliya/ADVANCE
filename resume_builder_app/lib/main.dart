import 'package:flutter/material.dart';
import 'package:resume_builder_app/utills/routes.dart';
import 'package:resume_builder_app/view/screens/Contact_info_page.dart';
import 'package:resume_builder_app/view/screens/achievement_page.dart';
import 'package:resume_builder_app/view/screens/build_page.dart';
import 'package:resume_builder_app/view/screens/carrier_objectives_page.dart';
import 'package:resume_builder_app/view/screens/declaration_page.dart';
import 'package:resume_builder_app/view/screens/education_page.dart';
import 'package:resume_builder_app/view/screens/experiences_page.dart';
import 'package:resume_builder_app/view/screens/hobbies_page.dart';
import 'package:resume_builder_app/view/screens/home_page.dart';
import 'package:resume_builder_app/view/screens/personal_detail_page.dart';
import 'package:resume_builder_app/view/screens/project_page.dart';
import 'package:resume_builder_app/view/screens/references_page.dart';
import 'package:resume_builder_app/view/screens/splash_screen.dart';
import 'package:resume_builder_app/view/screens/technical_skills_page.dart';


void main(){
  runApp(
    const ResumeApp()
  );
}


class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splash_screen:(context)=>const SplashScreen(),
        Routes.home_page:(context)=>const HomePage(),
        Routes.build_page:(context)=>const BuildPage(),
        Routes.contact_info_page:(context)=>const ContactInfoPage(),
        Routes.carrier_objectives_page:(context)=>const CarrierObjectivesPage(),
        Routes.personal_detail_page:(context)=>const PersonalDetailPage(),
        Routes.education_page:(context)=>const EducationPage(),
        Routes.experiences_page:(context)=>const ExperiencesPage(),
        Routes.technical_skills_page:(context)=>const TechnicalSkillsPage(),
        Routes.hobbies_page:(context)=>const HobbiesPage(),
        Routes.project_page:(context)=>const ProjectPage(),
        Routes.achievement_page:(context)=>const AchievementPage(),
        Routes.references_page:(context)=>const ReferencesPage(),
        Routes.declaration_page:(context)=>const DeclarationPage(),
      },
    );
  }
}
