import 'package:flutter/material.dart';
import '../bilgi_ekrani.dart';

List<GorselBilgiEkrani> _images = [
  GorselBilgiEkrani(
    gorsel: 'assets/images/ahtapot.jpg',
    baslik: 'Ahtapot',
    bilgi:
    'Ahtapot; yumuşak gövdeli, sekiz kollu, Octopoda takımında sınıflandırılan yumuşakçaların genel adı. Kabul görmüş 300 civarında türü bulunur. Ahtapotlar simetrik, iki gözlü ve tek gagalıdır. Ağzı kollarının ortasında yer alır. Çok hızlı şekil değiştirebilen yumuşak gövdesi sayesinde küçük deliklerden gövdesini sıkıştırarak geçebilir. Yüzerken sekiz kolu arkasından uzanır. Karmaşık bir sinir sistemine ve mükemmel bir görme duyusuna sahip olan ahtapotlar omurgasızlar içerisinde en zeki ve davranışsal olarak en büyük farklılıkları gösteren hayvanlar arasındadırlar.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/cekirge.jpg',
    baslik: 'Çekirge',
    bilgi:
    'Çekirge, düz kanatlılar takımından Caelifera alt takımının sıçrayıcı böceklerine verilen genel ad.Anadolu\'da çekirgeler türlerine göre, 4–5 cm arasında değişen büyüklüklerde yaşamaktadır.Çekirgeler, özellikle sıcak çöllere yakın yerlerde tarıma büyük zarar verir. Çekirgeler zengin bitki örtülü ülkelere yaptıkları dehşet verici göçlerle ünlüdür.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/denizanasi.jpg',
    baslik: 'Denizanası',
    bilgi:
    'Denizanası veya medüz, Scyphozoa ve Cubozoa sınıflarında bulunan, serbestçe yüzen ve beyni bulunmayan deniz canlısı.Denizanaları, yassılaşmış ve yüzmeye uyum sağlamış varlıklar olarak tanımlanabilirler.Vücut şekli çoğunlukla yayvan ya da kubbeli bir şemsiye şeklindedir.Şekli sayesinde ileriye doğru hareket eder.Medüzlerin sinir sistemleri ışığa ve kokuya duyarlı şekilde gelişmiştir. Küçük küçük belık ve deniz canlılarıyla beslenirler.Denizanaları bir eşeysiz üreme şekli olan tomurcuklanmayla ürerler.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/kelebek.jpg',
    baslik: 'Kelebek',
    bilgi:
    'Kelebek, böceklerin, pul kanatlılar veya kelebekler takımının kanatlı fertlerine verilen genel ad. 150.000 kadar türü bilinmektedir.Vücutları kiremit dizilişi şeklinde renkli gözle zor görülebilen pullarla örtülüdür. Pullar, uçları yassılaşarak genişlemiş kıllardır. Ufak sarsıntılarda koparlar. İki çift olan kanatlarının büyüklüğü türlere göre değişir. Çiçeklerin balözünün tadını ayaklarıyla alırlar. Tat alma cisimcikleri ayaklarına yerleşmiştir. Ayaklarıyla çiçeğin suyunu kontrol ederler. Beğendikleri takdirde kıvrılı duran hortumlarını uzatarak emerler.'
  ),


];

class OmurgasizlarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ), 
                  child: Column(children: [
              Text(
                'Omurgasız Hayvanlar',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 201, 255, 203),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                "Omurgasız olarak adlandırılan canlıların yapılarında hiçbir iç iskelet bulunmaz. Omurgasız hayvanlardan bazıları; çekirge, örümcek, kelebek, sinek, solucan, ahtapot, yengeç, ıstakoz, midye ve denizanasıdır",
                style: TextStyle(fontSize: 18),
                ),

                  ],),
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BilgiEkrani(
                                gorsel: _images[index].gorsel,
                                baslik: _images[index].baslik,
                                bilgi: _images[index].bilgi,
                                index: index,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: 'logo$index',
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(_images[index].gorsel),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: _images.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GorselBilgiEkrani {
  final String gorsel;
  final String baslik;
  final String bilgi;
  GorselBilgiEkrani({
    required this.gorsel,
    required this.baslik,
    required this.bilgi,
  });
}
