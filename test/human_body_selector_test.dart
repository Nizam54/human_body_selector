import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:human_body_selector/human_body_selector.dart';

void main() {
  const MethodChannel channel = MethodChannel('human_body_selector');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}
