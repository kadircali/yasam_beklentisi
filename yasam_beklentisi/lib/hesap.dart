import 'package:yasam_beklentisi/userData.dart';

class Hesap {
  UserData _userData;

  Hesap(this._userData);

  double hesaplama() {
    double sonuc;

    //burası sallama
    sonuc = 90 + _userData.yapilanSpor! - _userData.icilenSigara!;
    sonuc = sonuc + (_userData.boy! / _userData.kilo!);

    _userData.seciliCinsiyet == "kadın" ? sonuc + 3 : sonuc;
    return sonuc;
  }
}
