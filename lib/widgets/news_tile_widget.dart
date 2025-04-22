import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/models/webView.dart';

class NewsTileWidget extends StatelessWidget {
  final ArticalModel articalModel;
  const NewsTileWidget({super.key, required this.articalModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return WebView(
                url: articalModel.link,
              );
            }))
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              articalModel.imageUrl!,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(height: 200, child: Icon(Icons.error));
              },
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalModel.description ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
