import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';



void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}



class FirstRoute extends StatelessWidget {

  String text = 'オラオラオラオラオラオラ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            Icon(
              Icons.favorite,
              size: 200,
              color: Colors.pink,
            ),
            RaisedButton(
              child: Text(text),
              onPressed: () async {
                final result =  await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute('きょうこちゃんかわいい')),
                );
                text = result;
                print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}

