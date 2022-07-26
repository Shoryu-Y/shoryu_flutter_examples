import 'dart:io';
import 'dart:html' as web;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Writer Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WritePage(),
    );
  }
}

class WritePage extends StatefulWidget {
  const WritePage({Key? key}) : super(key: key);

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Output',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Expanded(
                    child: Markdown(
                      data: _controller.value.text,
                      selectable: true,
                    ),
                  ),
                ],
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Input',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: ColoredBox(
                        color: Colors.white,
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                          ),
                          maxLines: 1000,
                          onChanged: (_) {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
