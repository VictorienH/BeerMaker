class Calcul {
  double litreB = 10.0;
  double degreAl = 10.0;
  double malt = 0;
  double eauBra = 0;
  double eauRin = 0;
  double mcu = 0;

// Calcul des quantités de malt en kilogramme
  malts() {
    malt = (litreB * degreAl) / 20;
    return malt;
  }

//Calcul des quantités d’eau de Brassage en litre

  eauBrassage() {
    eauBra = malt * 2.8;
    return eauBra;
  }

// Calcul des quantités d’eau de rinçage en litre

  eauRincage() {
    eauRin = (litreB * 1.25) - (eauBra * 0.7);
    return eauRin;
  }

// Calcul MCU (Malt Color Units)

}
