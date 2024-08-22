import 'package:get/get.dart';

class Getcontroller extends GetxController {
  RxInt Burger = 0.obs;
  RxInt Pizza = 0.obs;
  RxInt F_Fries = 0.obs;
  RxInt Noodles = 0.obs;
  RxInt Momos = 0.obs;
  RxInt Sandwich = 0.obs;
  RxInt Samosa = 0.obs;
  RxInt Bataasha = 0.obs;
  RxInt Chaat = 0.obs;

  incrementBurger() {
    Burger.value++;
    print(Burger.value);
  }

  decrementBurger() {
    Burger.value--;
    while (Burger < 0) {
      Burger = 0.obs;
    }
    print(Burger.value);
  }

  incrementPizza() {
    Pizza.value++;
  }

  decrementPizza() {
    Pizza.value--;
    while (Pizza < 0) {
      Pizza = 0.obs;
    }
  }

  incrementF_Fries() {
    F_Fries.value++;
  }

  decrementF_Fries() {
    F_Fries.value--;
    while (F_Fries < 0) {
      F_Fries = 0.obs;
    }
  }

  incrementNoodes() {
    Noodles.value++;
  }

  decrementNoodles() {
    Noodles.value--;
    while (Noodles < 0) {
      Noodles = 0.obs;
    }
  }

  incrementMomos() {
    Momos.value++;
  }

  decrementMomos() {
    Momos.value--;
    while (Momos < 0) {
      Momos = 0.obs;
    }
  }

  incrementSandwich() {
    Sandwich.value++;
  }

  decrementSandwich() {
    Sandwich.value--;
    while (Sandwich < 0) {
      Sandwich = 0.obs;
    }
  }

  incrementSamosa() {
    Samosa.value++;
  }

  decrementSamosa() {
    Samosa.value--;
    while (Samosa < 0) {
      Samosa = 0.obs;
    }
  }

  incrementBataasha() {
    Bataasha.value++;
  }

  decrementBataasha() {
    Bataasha.value--;
    while (Bataasha < 0) {
      Bataasha = 0.obs;
    }
  }

  incrementChaat() {
    Chaat.value++;
  }

  decrementChaat() {
    Chaat.value--;
    while (Chaat < 0) {
      Chaat = 0.obs;
    }
  }
}
