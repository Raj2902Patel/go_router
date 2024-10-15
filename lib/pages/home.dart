import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_package/projects/routes/app_router_const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Home"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home Page",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstant.aboutRouterName, extra: {
                      "name": "Raj Patel",
                      "number": 43,
                      "city": "Ahmedabad"
                    });
                  },
                  child: const Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    GoRouter.of(context).pushNamed(
                        MyAppRouteConstant.profileRouteName,
                        pathParameters: {
                          'username': "Neel Patel",
                          'userId': "44",
                        });
                  },
                  child: const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstant.contactRouteName);
                  },
                  child: const Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
