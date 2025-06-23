import 'package:bitfolio/core/configs/themes/app_colors.dart';
import 'package:bitfolio/presentation/screens/home/home_screen.dart';
import 'package:bitfolio/presentation/widgets/common/styled_heading.dart';
import 'package:flutter/material.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  var currentIndex = 0;
  final titles = ['Basic Info', 'Contact Info', 'Education'];
  final _basicInfoKey = GlobalKey<FormState>();
  final _contactInfoKey = GlobalKey<FormState>();
  final _educationKey = GlobalKey<FormState>();

  void nextIndex() {
    setState(() {
      currentIndex++;
    });
  }

  void prevIndex() {
    setState(() {
      currentIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              styledHeading(text: 'setup', fontSize: 60),
              SizedBox(
                height: 10,
              ),
              stepsIndicator(),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: IndexedStack(
                    index: currentIndex,
                    children: [
                      basicInfo(),
                      contactInfo(),
                      educationInfo(),
                    ],
                  ),
                ),
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: currentIndex == 0 ? null : prevIndex,
                    child: Text('prev'),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              currentIndex == 2 ? AppColors.red : null)),
                      onPressed: currentIndex < 2
                          ? nextIndex
                          : () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (ctx) => HomeScreen()));
                            },
                      child: Text(currentIndex == 2 ? 'continue' : 'next'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget basicInfo() {
    return Form(
      key: _basicInfoKey,
      child: Column(
        spacing: 15,
        children: [
          TextField(
            decoration: InputDecoration(label: Text('first name')),
          ),
          TextField(
            decoration: InputDecoration(label: Text('last name')),
          ),
          TextField(
            decoration: InputDecoration(label: Text('full name')),
          ),
        ],
      ),
    );
  }

  Widget contactInfo() {
    return Form(
      key: _contactInfoKey,
      child: Column(
        spacing: 15,
        children: [
          TextField(
            decoration: InputDecoration(label: Text('first name')),
          ),
          TextField(
            decoration: InputDecoration(label: Text('last name')),
          ),
          TextField(
            decoration: InputDecoration(label: Text('full name')),
          ),
        ],
      ),
    );
  }

  Widget educationInfo() {
    return Form(
      key: _educationKey,
      child: Column(
        spacing: 15,
        children: [
          TextField(
            decoration: InputDecoration(label: Text('first name')),
          ),
          TextField(
            decoration: InputDecoration(label: Text('last name')),
          ),
          TextField(
            decoration: InputDecoration(label: Text('full name')),
          ),
        ],
      ),
    );
  }

  Widget stepsIndicator() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 40,
            width: currentIndex == 0 ? 100 : 40,
            decoration: BoxDecoration(
                color: currentIndex >= 0 ? AppColors.primary : AppColors.grey,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: currentIndex > 0
                  ? Icon(
                      Icons.check,
                      color: AppColors.lightBackground,
                    )
                  : Text(
                      currentIndex == 0 ? 'basic' : '1',
                      style: TextStyle(
                        color: AppColors.lightBackground,
                      ),
                    ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 40,
            width: currentIndex == 1 ? 100 : 40,
            decoration: BoxDecoration(
                color: currentIndex >= 1 ? AppColors.primary : AppColors.grey,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: currentIndex > 1
                  ? Icon(
                      Icons.check,
                      color: AppColors.lightBackground,
                    )
                  : Text(
                      currentIndex == 1 ? 'contact' : '2',
                      style: TextStyle(
                        color: AppColors.lightBackground,
                      ),
                    ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 40,
            width: currentIndex == 2 ? 100 : 40,
            decoration: BoxDecoration(
                color: currentIndex >= 2 ? AppColors.primary : AppColors.grey,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  currentIndex == 2 ? 'education' : '3',
                  style: TextStyle(
                    color: AppColors.lightBackground,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
