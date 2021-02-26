import 'package:flutter/material.dart';

class UserProfilScreen extends StatelessWidget {
  static const routeName = '/userProfil';

  const UserProfilScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Text(
                  'See and edit your profil details',
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ),
              Card(
                margin: EdgeInsets.all(28.0),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        child: Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Pseudo'),
                        controller: TextEditingController()..text = "myPseudo",
                        keyboardType: TextInputType.text,
                        maxLength: 30,
                        enabled: false,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Email'),
                        controller: TextEditingController()
                          ..text = "me@test.com",
                        maxLength: 256,
                        keyboardType: TextInputType.emailAddress,
                        enabled: false,
                      ),
                      TextField(
                        decoration:
                            const InputDecoration(labelText: 'Description'),
                        controller: TextEditingController()
                          ..text = "This is my description !",
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        maxLength: 300,
                        enabled: false,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.lock),
                              SizedBox(width: 10.0),
                              Text('Change password')
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
