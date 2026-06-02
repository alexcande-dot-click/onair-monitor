import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/secure/key_store.dart';

void main() {
  test('InMemoryKeyStore stores, reads, deletes per company', () async {
    final store = InMemoryKeyStore();
    await store.write('c1', 'KEY1');
    await store.write('c2', 'KEY2');
    expect(await store.read('c1'), 'KEY1');
    expect(await store.read('c2'), 'KEY2');
    await store.delete('c1');
    expect(await store.read('c1'), isNull);
    expect(await store.read('c2'), 'KEY2');
  });
}
