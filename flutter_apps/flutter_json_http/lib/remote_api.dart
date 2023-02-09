import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/user_moel.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({Key? key}) : super(key: key);

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {
  Future<List<User>> _getUserList() async {
    try {
      var response = await Dio().get(
          "https://jsonplaceholder.typicode.com/users"); // Dio internete gidip bir yapıyı almamızı sağlar. Burada verilen link üzerinden Dio aracılığı ile verileri aldık.
      List<User> userList =
          []; // Verilen linkten bir değer gelmeyebilir. Bu nedenle aşağıda bulunan if bloğunun sağlıklı çalışması için başlangıç değeri atandı.
      if (response.statusCode == 200) {
        // statusCode http dilinde bazı işlemleri ifade eder. 404 sayfa bulunamadı, 200 işlem başarılı gibi.
        userList = (response.data as List).map((e) => User.fromMap(e)).toList();
      }
      return userList;
    } on DioError catch (e) {
      return Future.error(e.toString());
    }
  }

  late final Future<List<User>> _userList;

  @override
  void initState() {
    super.initState();
    _userList =
        _getUserList(); // Build her tetiklendiğinde program yeniden başlatılmasın diye yapılmıştır.
  }

  @override
  Widget build(BuildContext context) {
    _getUserList();
    return Scaffold(
      appBar: AppBar(title: const Text("Remote Api with Dio")),
      body: FutureBuilder<List<User>>(
        future: _userList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var userList = snapshot.data!;
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                var user = userList[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  leading: CircleAvatar(child: Text(user.id.toString())),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
