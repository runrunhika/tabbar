import 'package:flutter/material.dart';
import 'package:tabbar_sample/widget.dart';


class BasicsPage extends StatelessWidget {
@override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Buttons 2.0 Basics',
        tabs: [
          Tab(child: Text("保存した商品"),),
          Tab(icon: Icon(Icons.insert_emoticon), text: 'Icons'),
          Tab(icon: Icon(Icons.space_bar), text: 'Padding'),
          Tab(icon: Icon(Icons.photo_size_select_large), text: 'Size'),
        ],
        children: [
          buildColors(),
          buildIcons(),
          buildPadding(),
          buildSize(),
        ],
      );

  Widget buildColors() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                //backgroundColor: Colors.white, // background
                primary: Colors.pinkAccent, // foreground
              ),
              child: buildText('Text Button'),
              onPressed: () => print('Short Press!'),
              onLongPress: () => print('Long Press!'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
              ),
              child: buildText('Elevated Button'),
              onPressed: () => print('Short Press!'),
              onLongPress: () => print('Long Press!'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                // backgroundColor: Colors.white,// background
                primary: Colors.orange, // foreground text
                side: BorderSide(color: Colors.orange), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () => print('Short Press!'),
              onLongPress: () => print('Long Press!'),
            ),
          ],
        ),
      );

  Widget buildIcons() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.pinkAccent, // text + icon color
              ),
              icon: Icon(Icons.add, size: 32),
              label: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.edit, size: 32),
              label: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue),
              ),
              icon: Icon(Icons.search, size: 32),
              label: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildPadding() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              ),
              child: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              ),
              child: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                side: BorderSide(color: Colors.blue), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget buildSize() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(240, 80),
              ),
              child: buildText('Text Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(240, 80),
              ),
              child: buildText('Elevated Button'),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(240, 80),
                side: BorderSide(color: Colors.blue), // foreground border
              ),
              child: buildText('Outlined Button'),
              onPressed: () {},
            ),
          ],
        ),
      );
  Text buildText(String text) => Text(text, style: TextStyle(fontSize: 28));
}