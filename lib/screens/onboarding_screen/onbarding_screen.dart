part of '../screens.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    super.key,
  });

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: List.generate(
              onBoardingData.length,
              (i) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/${onBoardingData[i].image}',
                    width: 138,
                    height: 138,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    onBoardingData[i].title,
                    style: TypographyMart.smallMedium.copyWith(
                      color: ColorMart.black.withOpacity(
                        0.75,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    onBoardingData[i].heading,
                    style: TypographyMart.heading1.copyWith(
                      color: ColorMart.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    onBoardingData[i].body,
                    style: TypographyMart.bodyRegular.copyWith(
                      color: ColorMart.darkGray,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardingData.length,
                  (i) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == i
                          ? ColorMart.primary
                          : ColorMart.black.withOpacity(0.25),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonMart.theme(
                context: context,
                text: 'Next',
                textColor: ColorMart.white,
                onPressed: () {
                  if (controller.page != (onBoardingData.length - 1)) {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );

                    Future.delayed(
                      const Duration(milliseconds: 300),
                      () {
                        setState(() {
                          index++;
                        });
                      },
                    );
                  } else {}
                },
                color: ColorMart.primary,
              ),
              const SizedBox(
                height: 8,
              ),
              ButtonMart.theme(
                context: context,
                text: 'Skip',
                textColor: ColorMart.black.withOpacity(0.75),
                onPressed: () {},
                color: ColorMart.lightestGray,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
