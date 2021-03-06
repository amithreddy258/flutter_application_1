import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/homepagedata.dart';

class ProductWidget extends StatelessWidget {
  final choice item;
  final int index;
  movetomodelpapersdatapage(BuildContext context) {
    Navigator.pushNamed(context, '/modelpapersdata');
  }

  movetopyqdatapage(BuildContext context) {
    Navigator.pushNamed(context, '/pyqdata');
  }

  movetonotesdatapage(BuildContext context) {
    Navigator.pushNamed(context, '/notesdata');
  }

  const ProductWidget({Key? key, required this.item, required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          onTap: () => index == 0
              ? movetopyqdatapage(context)
              : (index == 1
                  ? movetomodelpapersdatapage(context)
                  : (index == 3 ? movetonotesdatapage(context) : null)),
          leading: Image.asset(item.image),
          title: Text(item.name),
          subtitle: Text(item.dis),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
