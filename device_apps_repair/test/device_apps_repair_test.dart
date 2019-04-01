import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:device_apps_repair/device_apps_repair.dart';

void main() {
  const MethodChannel channel = MethodChannel('device_apps_repair');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DeviceAppsRepair.platformVersion, '42');
  });
}
