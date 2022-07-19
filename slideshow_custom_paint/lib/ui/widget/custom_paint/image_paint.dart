import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImagePaint extends StatefulWidget {
  const ImagePaint({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<ImagePaint> createState() => _ImagePaintState();
}

class _ImagePaintState extends State<ImagePaint> {
  ui.Image? image;
  Rect? src;

  @override
  void initState() {
    super.initState();
    Future(() async {
      final byteData = await rootBundle.load(widget.imagePath);
      final list = byteData.buffer.asUint8List();

      ui.decodeImageFromList(list, (result) {
        final rect = Rect.fromLTWH(
          0,
          0,
          result.width.toDouble(),
          result.height.toDouble(),
        );
        setState(() {
          image = result;
          src = rect;
        });
      });

      await Future<void>.delayed(const Duration(seconds: 5));
      print('elapsed 5s');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print('！！！！！Rebuild！！！！！');
    final image = this.image;
    final src = this.src;

    if (image == null || src == null) {
      return const SizedBox();
    }

    return FittedBox(
      child: CustomPaint(
        painter: _ImagePainter(image: image, src: src),
        size: Size(src.width, src.height),
      ),
    );
  }
}

class _ImagePainter extends CustomPainter {
  const _ImagePainter({required this.image, required this.src});

  final ui.Image image;

  /// 画像全体のうち、描写する範囲をRectで渡す
  /// 例：横：1920px, 縦：1080pxの画像に対して
  /// Rect.fromLTWH(0, 0, 960, 1080)
  /// を渡すと、
  /// 画像の左上の頂点を基点として横幅960px、縦幅1080px分だけ描写する
  final Rect src;

  @override
  void paint(Canvas canvas, Size size) {
    print('？？？？？Repaint？？？？？');
    final paint = Paint()..style = PaintingStyle.fill;

    /// 画像を描写する画面の範囲をRectで渡す
    final dst = Rect.fromLTWH(0, 0, src.width, src.height);
    canvas.drawImageRect(
      image,
      src,
      dst,
      paint,
    );
  }

  @override
  bool shouldRepaint(_ImagePainter oldDelegate) {
    // return false;
    print('old: ${oldDelegate.image.width}');
    print('new: ${image.width}');

    return oldDelegate.image != image;
  }
}
