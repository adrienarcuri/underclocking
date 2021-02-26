import 'package:test/test.dart';
import 'package:underclocking/models/pc_config.dart';

void main() {
  group('Testing PcConfig', () {
    test('Should create a PcConfig', () {
      const String _name = 'myPcConfig';
      var pcConfig = PcConfig(name: _name);

      expect(pcConfig.name, _name);
    });
  });
}
