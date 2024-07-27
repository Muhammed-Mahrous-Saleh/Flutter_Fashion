import 'package:fashions/data/home_data_model.dart';
import 'package:fashions/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Box<HomeData> homeDataBox;

  @override
  void initState() {
    super.initState();
    homeDataBox = Hive.box<HomeData>('homeData');
  }

  Future<void> _logout() async {
    final sessionBox = Hive.box('session');
    await sessionBox.put('isLoggedIn', false);

    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                        ModalRoute.withName('//'),
                      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Custom behavior for the back button
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: homeDataBox.listenable(),
          builder: (context, Box<HomeData> box, _) {
            final homeData = box.get('data');

            if (homeData == null) {
              return Center(
                child: Text('No data available'),
              );
            }

            return ListView.builder(
              itemCount: homeData.data.length,
              itemBuilder: (context, index) {
                final key = homeData.data.keys.elementAt(index);
                final value = homeData.data[key];
                return ListTile(
                  title: Text(key),
                  subtitle: Text(value.toString()),
                );
              },
            );
          }),
    );
  }
}
