import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);
  final String _img =
      "https://iaaspr.tmgrup.com.tr/92801c/414/262/0/118/1600/1132?u=https://iaspr.tmgrup.com.tr/2022/06/22/besiktas-sampdoria-maci-ne-zaman-oynanacak-besiktas-sampdoria-hazirlik-maci-hangi-kanalda-yayinlanacak-1655906405390.jpeg";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                    color: Colors.amber,
                    child: Image.asset(
                      "assets/images/Screenshot_136.png",
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.amber.shade200, child: Image.network(_img)),
              ),
              Expanded(
                child: Container(
                    color: Colors.amber.shade500,
                    child: CircleAvatar(
                      child: Text(
                        "Beşiktaş",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      radius: 80,
                      backgroundImage: NetworkImage(_img),
                    )),
              )
            ],
          ),
        ),
        FadeInImage.assetNetwork(
            placeholder: "assets/images/loading.gif", image: _img),
        Expanded(child: Placeholder())
      ],
    ));
  }
}
