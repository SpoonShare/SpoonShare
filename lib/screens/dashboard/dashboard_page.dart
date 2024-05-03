import 'package:flutter/material.dart';
import 'package:spoonshare/screens/ngo/ngo_form.dart';
import 'package:spoonshare/screens/volunteer/volunteer_form.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isShareFoodSelected = true;
  bool isDonateFoodSelected = false;

  @override
  Widget build(BuildContext context) {
    return
      // Scaffold(
      // appBar: AppBar(
      //   title: const Text('Join Us'),
      //   backgroundColor: const Color(0xFFFF9F1C),
      //   titleTextStyle: const TextStyle(
      //     color: Colors.white,
      //     fontFamily: 'DM Sans',
      //     fontSize: 18,
      //     fontWeight: FontWeight.w700,
      //   ),
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     color: Colors.white,
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      // body:
      SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 20,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              SizedBox(
                width: 300,
                height: 69,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '“Join Spoon Share Family”',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.bold,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      width: 275,
                      child: Text(
                        'Volunteer with a Smile, Empower with Heart!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.800000011920929),
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 275,
                height: 140,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Share Food
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const VolunteerFormScreen(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 108,
                                height: 106,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFFF9F1C),
                                  shape: CircleBorder(),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Image.asset(
                                      "assets/images/volunteer.png"),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Become a Volunteer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 27),
                        // Donate Food
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NGOFormScreen(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 108,
                                height: 106,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFFF9F1C),
                                  shape: CircleBorder(),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Image.asset("assets/images/ngo.png"),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Join us as NGO',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: 320,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/dashboard.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
