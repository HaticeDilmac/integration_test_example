import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test_example/main.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  //Entegrasyon testini başlatır.
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  //Entegrasyon testlerini gruplar.
  group('end-to-end test', () {
    //Widget açıklaması yazılır ve gerekli fonksiyonları da eklenir.
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      //Uygulama widgetını yükle.
      await tester.pumpWidget(const MyApp());

      //Sayacın başlangıcının 0 olduğunu doğrula
      expect(find.text('0'), findsOneWidget);
      //findsOneWidgets ile başlangıç değeri alınıyorken bu değerin 0 olduğunu doğruluyoruzç

      //Tıklanmanın sağlanması içinartış düğmesini bul.
      //Butonu keyinden bul.Keyi bul
      final fab = find.byKey(const Key('increment'));

      //Testte tıklanma işleminin yapıldığı yer.
      await tester.tap(fab);

      //Çerçeveyi tetikle
      await tester.pumpAndSettle();

      //Sayacın 1 arttığını doürula.
      expect(find.text('1'), findsOneWidget);
    });
  });
}

//expect() ile widgetta ilk ve sonraki işlemlerini kontrol etmek için