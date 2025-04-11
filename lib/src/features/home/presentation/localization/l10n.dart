// ignore_for_file: lines_longer_than_80_chars

import 'package:intl/intl.dart';

class HomeI18n {
  static String get title => Intl.message(
        'Главная',
        desc: 'Главная',
        name: 'HomeI18n_title',
      );

  static String get fillMainInfo => Intl.message(
        'Заполните основную\nинформацию',
        desc: 'Заполните основную информацию',
        name: 'HomeI18n_fillMainInfo',
      );

  static String get fillMainInfoDescription => Intl.message(
        'Новые опросы станут доступны после\nзаполнения основной информации',
        desc:
            'Новые опросы станут доступны после заполнения основной информации',
        name: 'HomeI18n_fillMainInfoDescription',
      );

  static String get fillBtn => Intl.message(
        'Заполнить',
        desc: 'Заполнить',
        name: 'HomeI18n_fillBtn',
      );

  static String get welcome => Intl.message(
        'Добро пожаловать',
        desc: 'Добро пожаловать',
        name: 'HomeI18n_welcome',
      );

  static String get availablePolls => Intl.message(
        'Доступные опросы',
        desc: 'Доступные опросы',
        name: 'HomeI18n_availablePolls',
      );

  static String get fillProfile => Intl.message(
        'Заполните профиль',
        desc: 'Заполните профиль',
        name: 'HomeI18n_fillProfile',
      );

  static String get fillProfileDesc => Intl.message(
        'Новые опросы станут доступны после заполнения основной информации',
        desc:
            'Новые опросы станут доступны после заполнения основной информации',
        name: 'HomeI18n_fillProfileDesc',
      );

  static String get fillProfileCompleted => Intl.message(
        'Заполненность профиля',
        desc: 'Заполненность профиля',
        name: 'HomeI18n_fillProfileCompleted',
      );

  static String get newPollsTitle => Intl.message(
        'Здесь появятся новые опросы',
        desc: 'Здесь появятся новые опросы',
        name: 'HomeI18n_newPollsTitle',
      );

  static String get newPollsDesc => Intl.message(
        'Чтобы получать больше опросов заполните расширенную анкету профиля',
        desc:
            'Чтобы получать больше опросов заполните расширенную анкету профиля',
        name: 'HomeI18n_newPollsDesc',
      );

  static String get moreDetailsBtn => Intl.message(
        'Подробнее',
        desc: 'Подробнее',
        name: 'HomeI18n_moreDetailsBtn',
      );

  static String get bonuses => Intl.message(
        'Ваши баллы',
        desc: 'Ваши баллы',
        name: 'HomeI18n_bonuses',
      );

  static String get withdrawalButtonLabel => Intl.message(
        'Вывести',
        desc: 'Вывести',
        name: 'HomeI18n_withdrawalButtonLabel',
      );

  static String get bonusesDesc => Intl.message(
        '1 балл = 1 ₽',
        desc: '1 балл = 1 ₽',
        name: 'HomeI18n_bonusesDesc',
      );

  static String get newUserStatusTitle => Intl.message(
        'Новичок',
        desc: 'Новичок',
        name: 'HomeI18n_newUserStatusTitle',
      );

  static String get newUserStatusDesc => Intl.message(
        'До нового статуса осталось совсем чуть–чуть',
        desc: 'До нового статуса осталось совсем чуть–чуть',
        name: 'HomeI18n_newUserStatusDesc',
      );

  static String get profileForms => Intl.message(
        'Анкеты профиля',
        desc: 'Анкеты профиля',
        name: 'HomeI18n_profileForms',
      );
}
