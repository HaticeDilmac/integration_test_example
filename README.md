# Uygulama Entegrasyon Testi

Bu, Flutter uygulamanızın basit bir entegrasyon testini yürütmek için kullanılan bir örnektir. Bu test, artış düğmesine tıkladığınızda sayacın başlangıçta 0'dan 1'e nasıl arttığını gösterir.

## Başlarken

Bu testi çalıştırmadan önce projenizin bağımlılıklarını yüklediğinizden emin olun. Ayrıca `integration_test` paketini projenize eklediğinizden de emin olun.

```bash
flutter pub get
```

## Testi Çalıştırma

Bu entegrasyon testini çalıştırmak için aşağıdaki komutu kullanabilirsiniz:

```bash
flutter drive --driver=test_driver/integration_test.dart --target=test/integration_test.dart
```

Test başarıyla tamamlandığında, sonuçları terminale görmelisiniz. Eğer testler başarısız olursa, hata mesajları da burada görünecektir.

## Test Senaryosu

Bu test, aşağıdaki senaryoyu uygular:

1. Uygulama başlatılır.
2. Sayacın başlangıçta 0 olduğu doğrulanır.
3. Artış düğmesi bulunur ve tıklanır.
4. Artış düğmesine tıklandıktan sonra sayacın 1 arttığı doğrulanır.



## English README:

# Application Integration Test

This is an example used to run a simple integration test for your Flutter application. This test demonstrates how the counter increases from 0 to 1 when you click the increment button.

## Getting Started

Before running this test, make sure you have installed the dependencies for your project. Also, ensure that you have added the `integration_test` package to your project.

```bash
flutter pub get
```

## Running the Test

To run this integration test, you can use the following command:

```bash
flutter drive --driver=test_driver/integration_test.dart --target=test/integration_test.dart
```

When the test is successfully completed, you should see the results in your terminal. If the tests fail, error messages will also be displayed here.

## Test Scenario

This test applies the following scenario:

1. The application is launched.
2. It verifies that the counter is initially 0.
3. It finds the increment button and clicks it.
4. After clicking the increment button, it verifies that the counter has increased to 1.
