import 'package:flutter/material.dart';
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  // ----------------------------------------------------- BL Start
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Define the onboarding pages.
  final List<OnboardingPage> _pages = [
    OnboardingPage(
      image:
          'assets/images/onboarding1.jpg', // Ensure these assets exist in your project.
      title: "Start Your Journey with IT Path",
      description: "Your road to growth and success begins here",
    ),
    OnboardingPage(
      image: 'assets/images/onboarding2.jpg',
      title: "All Resources in One Place",
      description: "Learn easily from a variety of tools and materials.",
    ),
    OnboardingPage(
      image: 'assets/images/onboarding3.jpg',
      title: "Learn Anytime, Your Way",
      description: "Study flexibly, at your own pace and style.",
    ),
  ];
  // ----------------------------------------------------- BL End
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            // Expanded PageView for onboarding pages.
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            _pages[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          _pages[index].title,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          _pages[index].description,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Dots indicator.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pages.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: _currentPage == index ? 12.0 : 8.0,
                  height: _currentPage == index ? 12.0 : 8.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                );
              }),
            ),
            const SizedBox(height: 16.0),
            // Next or "Get Started" button.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_currentPage == _pages.length - 1) {
                    // When onboarding is complete.
                    Navigator.pushReplacement(
                      context,)
                      //MaterialPageRoute(builder: (_) => LoginView()),
                    );
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Text(
                  _currentPage == _pages.length - 1 ? "Get Started" : "Next",
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}

// Model for onboarding content.
class OnboardingPage {
  final String image;
  final String title;
  final String description;

  OnboardingPage({
    required this.image,
    required this.title,
    required this.description,
  });
}
