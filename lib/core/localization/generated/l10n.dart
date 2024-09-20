// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `------------------- validators_comment -------------------`
  String get validators_comment {
    return Intl.message(
      '------------------- validators_comment -------------------',
      name: 'validators_comment',
      desc: '',
      args: [],
    );
  }

  /// `Please, Enter Your Email`
  String get enterYourEmail {
    return Intl.message(
      'Please, Enter Your Email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please, Enter Your Password`
  String get enterYourPassword {
    return Intl.message(
      'Please, Enter Your Password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your email address is incorrect`
  String get invalidEmailMessage {
    return Intl.message(
      'Your email address is incorrect',
      name: 'invalidEmailMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your password is short`
  String get invalidPasswordMessage {
    return Intl.message(
      'Your password is short',
      name: 'invalidPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please, Enter Your Name`
  String get enterYourName {
    return Intl.message(
      'Please, Enter Your Name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Your name is short`
  String get invalidNameMeg {
    return Intl.message(
      'Your name is short',
      name: 'invalidNameMeg',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Your name is too short`
  String get yourNameIsTooShort {
    return Intl.message(
      'Your name is too short',
      name: 'yourNameIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------- onboarding_comment ------------------------------------`
  String get onboarding_comment {
    return Intl.message(
      '-------------------------------------- onboarding_comment ------------------------------------',
      name: 'onboarding_comment',
      desc: '',
      args: [],
    );
  }

  /// `Evnto`
  String get evnto {
    return Intl.message(
      'Evnto',
      name: 'evnto',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To`
  String get welcomeTo {
    return Intl.message(
      'Welcome To',
      name: 'welcomeTo',
      desc: '',
      args: [],
    );
  }

  /// `Never Miss a Moment!`
  String get onboardingTitle1 {
    return Intl.message(
      'Never Miss a Moment!',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `All Events in One Place!`
  String get onboardingTitle2 {
    return Intl.message(
      'All Events in One Place!',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Get real-time updates on events and activities so you can make the most of your time`
  String get onboardingSubtitle1 {
    return Intl.message(
      'Get real-time updates on events and activities so you can make the most of your time',
      name: 'onboardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Easily find and book events with our organized application.`
  String get onboardingSubtitle2 {
    return Intl.message(
      'Easily find and book events with our organized application.',
      name: 'onboardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Register to easily access and stay updated on events!`
  String get welcomeTitle {
    return Intl.message(
      'Register to easily access and stay updated on events!',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------- questions_comment ------------------------------------`
  String get questions_comment {
    return Intl.message(
      '-------------------------------------- questions_comment ------------------------------------',
      name: 'questions_comment',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
