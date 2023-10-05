import 'package:devhub/core/constants/constants.dart';
import 'package:devhub/theme/pallate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:routemaster/routemaster.dart';

import '../../apis/views/add_api.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('print');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddApi(),
            ),
          );
        },
        child: Container(
          width: 60,
          height: 60,
          child: const Icon(Icons.add),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple[800]!,
                  Colors.deepPurpleAccent,
                ],
              )),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple[800]!,
                        Colors.deepPurpleAccent
                      ],
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 110.0,
                      ),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundImage: AssetImage(
                          Constants.logoPath,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Aditya Shahi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Level 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: AppColors.black,
                  child: Center(
                    child: Card(
                      margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 310.0,
                        height: 290.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Information",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Divider(
                                color: Colors.grey[300],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.blueAccent[400],
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              // ---------------------------------------------------------------------------
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.auto_awesome,
                                    color: Colors.yellowAccent[400],
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Notifications",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      Switch(
                                        value: val,
                                        onChanged: (value) {
                                          setState(() {
                                            val = !val;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              // -----------------------------------------------------
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.pinkAccent[400],
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bookmarks",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              InkWell(
                                onTap: () {
                                  FirebaseAuth.instance.signOut();
                                  GoogleSignIn().disconnect();
                                  

                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.logout,
                                      color: Colors.lightGreen[400],
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Log Out",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Added Apis',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "32",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Column(children: [
                        Text(
                          'Followers',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ]),
                    ),
                    Column(
                      children: [
                        Text(
                          'Following',
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          '19',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )))
        ],
      ),
    );
  }
}
