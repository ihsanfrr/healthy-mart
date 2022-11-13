part of '../models.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String heading;
  final String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.heading,
    required this.body,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    image: 'onboarding_1.png',
    title: 'Welcome to',
    heading: 'Healthy mart\ngrocery',
    body: 'Eat fresh fruits and vegetables\nand try to be healthy.',
  ),
  OnBoardingModel(
    image: 'onboarding_2.png',
    title: 'We provide',
    heading: 'The best quality\ngrocery to you',
    body: 'Healthy mart store where we\ndeliever everything on time.',
  ),
  OnBoardingModel(
    image: 'onboarding_3.png',
    title: 'Peace of mind',
    heading: 'Same day delivery\nguaranteed',
    body: 'We deliver your orders to fast\nand your prefer time.',
  ),
  OnBoardingModel(
    image: 'onboarding_4.png',
    title: 'Big saving',
    heading: 'With seasonal\ndiscounts',
    body: 'We provide the best price for\nour customers.',
  ),
];
