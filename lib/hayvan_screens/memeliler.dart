import 'package:flutter/material.dart';
import '../bilgi_ekrani.dart';

List<GorselBilgiEkrani> _images = [
  GorselBilgiEkrani(
    gorsel: 'assets/images/kedi.jpg',
    baslik: 'Kedi',
    bilgi:
    'Evcil kedi (Felis catus), evcilleştirilmiş, etobur memeli. Güçlü, esnek beden ve hızlı refleksleriyle, keskin pençeleriyle ve küçük avları öldürmeye uyarlanmış dişleriyle diğer kedigillere benzerler.Zayıf ya da çok yüksek frekanstaki sesleri duyabilirler.Karanlıkta iyi görebilirler, güçlü koku alma duyusuna sahiptirler.70\'ten fazla kedi ırkı olduğu tahmin edilmekte.Sosyal bir türlerdir. Kedilerde iletişim; salgıladıkları kokular ve kedilere özgü vücut dili, seslenme çeşitliliğini de içinde barındırır. Üreme hızları yüksektir.',
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/kopek.jpg',
    baslik: 'Köpek',
    bilgi:
    'Köpek (Canis lupus familiaris); köpekgiller (Canidae) familyasına ait, görünüş ve büyüklükleri farklı 400\'den fazla ırkı olan, etçil bir memelidir. Bozkurt\'un (C. lupus) alt türlerinden biri olan köpek, tilki ve çakallarla da yakın akrabalardır. Kedilerle birlikte dünyanın en geniş coğrafyaya yayılan ve en çok beslenen iki evcil hayvanından biridir. 2001 yılı tahminlerine göre dünyada 400 milyondan fazla köpek vardır.',
  ),

  GorselBilgiEkrani(
    gorsel: 'assets/images/aslan.jpg',
    baslik: 'Aslan',
    bilgi:
    'Aslan veya arslan(Panthera leo), Panthera cinsindeki büyük kedilerden biridir ve kedigiller (Felidae) ailesinin bir üyesidir. 184-208 cm (72-82 in) kafa-gövde uzunluğuna sahip yetişkin erkek bireyler, 160-184 cm (63-72 in) uzunluğundaki dişilerden daha büyüktür. Pride adı verilen gruplar oluşturan sosyal bir türdür. Bir aslan grubu, birkaç yetişkin erkekten, ilgili dişilerden ve yavrulardan oluşur. Dişi aslan grupları genellikle birlikte avlanır ve çoğunlukla büyük toynaklıları hedef alır. Aslan bir süper avcı ve kilittaşı avcısıdır.'
  ),

  GorselBilgiEkrani(
    gorsel: 'assets/images/fare.jpg',
    baslik: 'Fare',
    bilgi:
    'Fare, kemiriciler (Rodentia) takımından bir sıçangil cinsi.Çok hızlı kaçabilen ve çok hızlı üreyen hayvanlardır, yeryüzünün bütün karalarına dağılmışlardır.Farelerin iki dış keseleri vardır, keselerde yiyecek taşırlar, temizlemek gerektiğinde de içini dışına çıkararak çevirip temizlerler. Avurdu keseli fare yuva yaparken toprağı güçlü ön pençeleriyle kazar. Kıvrık kesici dişlerini sert toprak ve taşları yerinden oynatmak için kullanır. Kesici dişleri sürekli olarak büyüdüğü için aşınan yüzeyler hemen yenilenir.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/yarasa.jpg',
    baslik: 'Yarasa',
    bilgi:
    'Yarasalar, ön ayakları kanat olarak uyarlanmış ve doğal olarak gerçekten uçabilen Chiroptera takımında sınıflandırılan memelilerdir.Yeryüzünde 18 familyaya bağlı olan yaklaşık 986 tür yarasa bulunmaktadır. Yarasalar ortalama olarak 20 yıl yaşamaktadır. Yılda bir defa yavrulamaktadır. Her yıl, 3 ay kış uykusuna yatmaktadır.Yarasaların ilginç ve benzersiz özellikleri tavanda uzun süre asılı kalabilme özelliğine sahip olan yarasalar, bunu bacaklarındaki özel yapılı kaslar sayesinde gerçekleştirirler.Yarasalar uçabilen tek memeli türüdür, kanatları kuşlardan farklıdır. El ve parmak kemikleri bitişiktir.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/yunus.jpg',
    baslik: 'Yunus Balığı',
    bilgi:
    'Yunuslar geniş bir dağılıma sahip envai çeşitlilikte su memelileri. “Delphinidae” (Okyanus yunusları), “Platanistidae” (Hint nehir yunusları), “Iniidae” (Yeni Dünya nehir yunusları), “Pontoporiidae” (Tuzlu su yunusları) ve soyu tükenmiş Lipotidae (Baiji veya Çin nehir yunusları) gibi yunus aileleri var. Yaşayan en yakın akrabaları su aygırları.Okyanus yunusları ailesinin en iri üyesi ve insandan sonra dünyadaki en geniş yayılıma sahip ikinci memelisi olan orkalar, 10 metre uzunluğa ve 10 ton ağırlığa ulaşabilirYunuslar, nefes alıp vermeye bilinçli olarak kendileri karar veren varlıklardır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/foto1.jpg',
    baslik: 'Su Samuru',
    bilgi:
    'Bayağı su samuru (Lutra lutra), sansargiller familyasından, nehir ve göl kıyılarında yaşayan etçil bir memeli. Su kenarlarında kazdığı çukurlarda yaşar. Yuvası karada olmakla beraber girişi su altındandır. Ayakları kısa, beş parmaklı ve kısmen perdelidir. Balık, kurbağa avlar. Özel eğitilmiş köpeklerle avlanılır. Suya dalarken burun ve kulak deliklerini kapatır. Yassı kuyruğunu dümen olarak kullanır. Kuyrukla beraber 1,5 metre boy ve 15 kg ağırlıkta olanları vardır. Kuyruk altı bezlerinde yağlı ve kokulu bir madde ifraz eder.'
  ),


];

class MemeliHayvanlarPage extends StatelessWidget {
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
                'Memeli Hayvanlar',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                "Memeliler, yavrularını beslemek için meme bezlerinden süt üretip salgılar. Vücutlarında çokca kıllar vardır, kıllar soğukta hayatta kalmalarını sağlar. (Görsellere dokunun)",
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
