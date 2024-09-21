import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/features/home/data/event_bannar_entity.dart';
import 'package:evnto/features/home/data/event_entity.dart';
import 'package:evnto/features/home/view/components/home/event_card.dart';

import '../../features/questions/data/models/question_entity.dart';

class AppDummy {
  AppDummy._();

  static final questions = [
    QuestionEntity(
      question: "Choose Your College",
      options: [
        "Computers & Information Science",
        "Engineering",
        "Pharmacy",
        "Science",
        "Commerce",
        "Others",
      ],
    ),
    QuestionEntity(
      question: "Select events you are interested in",
      isMultiple: true,
      options: [
        "Workshops",
        "Seminars",
        "Lecutres",
        "Hackathons",
        "Study Groups",
        "Bootcamps",
      ],
    ),
    QuestionEntity(
      question: "Select skills you are interested in",
      isMultiple: true,
      options: [
        "Project Management",
        "Time Management",
        "Communication Skills",
        "Multi-tasking",
        "Public Speaking",
        "Interpersonal Skills",
      ],
    ),
  ];

  static final eventsBanner = [
    EventBannarEntity(
      imageUrl: Assets.imagesIeee,
      title: "Don't mess out!",
      description: "Join the event and make the most of this opportunity.",
    ),
    EventBannarEntity(
      imageUrl: Assets.imagesCis,
      title: "Don't mess out!",
      description: "Join the event and make the most of this opportunity.",
    ),
    EventBannarEntity(
      imageUrl: Assets.imagesMl,
      title: "Don't mess out!",
      description: "Join the event and make the most of this opportunity.",
    ),
  ];

  static final events = [
    EventEntity(
      id: "1",
      name: "IEEE Victoris 3.0",
      type: EventType.free,
      image: Assets.imagesIeee,
      description:
          "IEEE is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.",
      date: DateTime.now(),
      location: "ITI Mansoura University",
    ),
    EventEntity(
      id: "2",
      name: "CIS Workshop",
      type: EventType.paid,
      image: Assets.imagesCis,
      description:
          "CIS is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.",
      date: DateTime.now(),
      location: "ITI Mansoura University",
    ),
    EventEntity(
      id: "1",
      name: "IEEE Victoris 3.0",
      type: EventType.free,
      image: Assets.imagesIeee,
      description:
          "IEEE is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.",
      date: DateTime.now(),
      location: "ITI Mansoura University",
    ),
    EventEntity(
      id: "2",
      name: "CIS Workshop",
      type: EventType.paid,
      image: Assets.imagesCis,
      description:
          "CIS is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.",
      date: DateTime.now(),
      location: "ITI Mansoura University",
    ),
    EventEntity(
      id: "1",
      name: "IEEE Victoris 3.0",
      type: EventType.free,
      image: Assets.imagesIeee,
      description:
          "IEEE is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.",
      date: DateTime.now(),
      location: "ITI Mansoura University",
    ),
    EventEntity(
      id: "2",
      name: "CIS Workshop",
      type: EventType.paid,
      image: Assets.imagesCis,
      description:
          "CIS is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.",
      date: DateTime.now(),
      location: "ITI Mansoura University",
    ),
  ];
}
