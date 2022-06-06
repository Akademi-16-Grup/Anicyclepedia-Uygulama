import 'package:flutter/material.dart';
import '../bilgi_ekrani.dart';

List<GorselBilgiEkrani> _images = [
  GorselBilgiEkrani(
    gorsel: 'assets/images/sazan.jpg',
    baslik: 'Sazan Balığı',
    bilgi:
    'Sazan (Cyprinus carpio), sazangiller (Cyprinidae) familyasına adını veren tatlı su balığı. Göl ve yavaş akan derelerde bulunur. Uzun gövdeli, solucan, böcek larvaları ve bitkilerle beslenen bir dip balığıdır. 1,5 metre boyunda, 35 kg ağırlıkta olanları vardır. Ömrü 40-50 yıla kadar varabilir. Her ısıdaki suya uyum sağlar. 3-30 °C arasındaki sularda rastlanır. Aşırı soğuklarda toplu halde çamura gömülerek kış uykusuna yatarlar. Kışın ölmeden donabilirler.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/japon.jpg',
    baslik: 'Japon Balığı',
    bilgi:
    'Japon balığı, (Carassius auratus ve türleri) sazangiller familyasından bir balık türü. Çaprazlama yöntemi ile farklı renklerde ve vücut yapısında çok çeşidi üretilmiştir. Japon balıklarının çoğu comet, shubunkin, suriye japonu gibi türler soğuk suda yaşayabilirler. Bulundukları akvaryumlarda tek cins olarak besleniyorlarsa ısıtıcıya ihtiyaç yoktur. Ama süslü japon balıkları için (oranda, ranchu, rykuin gibi) ıstıcıya ihtiyaç vardır, ısıtıcı suyu ısıtmak için değil ısının sabit kalması için önemli bir ekipmandır. Vahşi türevleri 4-30 derece arası yaşarken süslü türler 18-25 derece arası yaşayabilir'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/nil.jpg',
    baslik: 'Nil Tilapyası',
    bilgi:
    'Oreochromis niloticus, Cichlidae familyasına bağlı yırtıcı bir balık türüdür.İsrail\'in bir kısmında da rastlamak mümkündür.Oreochromis niloticus, yukarıdaki bölgelerde bulunan ve deniz seviyesinden 1830 m yüksekte bulunan nehir, akarsu, kanal, göl ve gölet gibi tüm tatlı su havzalarında rastlanabilir. Deniz seviyesinden 1.830 m (6.000 ft) yüksekliğe kadar değişir. Acı sularda da yaşamayı başaran bu tür, tam tuzlu sularda yaşayamaz.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/lepistes.jpg',
    baslik: 'Lepistes',
    bilgi:
    'Lepistes ya da gupi, Poeciliidae familyasından canlı yumurtlayabilen akvaryumlarda yetiştirilen tatlı su balığı.Anayurdu Güney Amerika olan lepistes günümüzde dünyanın hemen hemen her yerinde bulunur. Düzgün beslendiği takdirde çok kolay bir biçimde ürerler. Tropikal bölge canlısıdır, 25-28 derece sıcaklıkta beslenmesi gerekir. Balığın dayanıklılığına, genetik kalitesine, su sıcaklığına, iyi beslenmesine bağlı olarak 20-40 gün gibi bir gebelik döneminden sonra gelişkin yavrular yumurtlar. Dişi lepistes 20-40 kadar yavru doğurabilir.'
  ),

 

];

class BaliklarPage extends StatelessWidget {
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
                'Balıklar',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                "Balıklar (Latince: pisces) poikloterm olan, neredeyse sadece suda yaşayan ve solungaçları ile solunum yapan, soğuk kanlı, yürekleri çift gözlü, çoğunun vücudu pullu, genellikle yumurta ile üreyen omurgalı hayvanlardır. Bazı türler canlı doğurarak ürer. Mesela tatlı su balıklarından Lepistes'in yumurtaları anne karnında çatlar ve canlı doğum gerçekleşir.",
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
