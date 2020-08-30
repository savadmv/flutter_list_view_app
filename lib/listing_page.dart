import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_view_app/user_model.dart';
import 'package:flutter_list_view_app/user_repository.dart';

class ListingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListingPageState();
}

class ListingPageState extends State<ListingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("Users"),
      ),
      body: FutureBuilder<Response>(
        builder: (context, snap) {
          if (snap.hasData) {
            UserModel userModel = UserModel.fromJson(snap.data.data);
            if (userModel.users.isEmpty) {
              return Center(
                child: Text("No User found"),
              );
            } else {
              List<User> userList = userModel.users;
              return ListView.builder(
                itemBuilder: (context, index) {
                  User user = userList[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).secondaryHeaderColor),
                    child: ListTile(
                      title: Text("${user.firstName}  ${user.lastName}"),
                      leading: CircleAvatar(
                        child: Text("${user.id} "),
                        backgroundColor: Theme.of(context).buttonColor,
                      ),
                      subtitle: Text("${user.email} "),
                      trailing: CircleAvatar(
                        backgroundImage: NetworkImage("${user.avatar}"),
                      ),
                    ),
                  );
                },
                itemCount: userList.length,
              );
            }
          }
          return Center(
            child: Text("Loading"),
          );
        },
        future: UserRepository().getUsers(),
      ),
    );
  }
}
