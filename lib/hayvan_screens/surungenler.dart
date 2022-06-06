import 'package:flutter/material.dart';
import '../bilgi_ekrani.dart';

List<GorselBilgiEkrani> _images = [
  GorselBilgiEkrani(
    gorsel: 'assets/images/kaplumbaga.jpg',
    baslik: 'Kaplumbağa',
    bilgi:
    'Kaplumbağa (ya da tosbağa), Testudines takımını oluşturan çok sert ve kemiksi bir kabuk içinde yaşayan, ağır yürüyüşlü, dört ayaklı sürüngenler.Hareketleri yönünden ne kadar telaşsız ve ağır hayvanlarsa onların tarih boyunca gelişimi de o kadar yavaş olmuştur.  Açlığa pek dayanıklıdırlar. Çok uzun ömürlüdürler. Yüz, yüz elli yıl kadar yaşarlar.Günümüzde, soyunu sürdürmekte olan 250\'ye yakın kaplumbağa türü bulunmaktadır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/keller.jpg',
    baslik: 'Kertenkele/Keller',
    bilgi:
    'Kelerler, çoğu okyanus ada zincirinin yanı sıra Antarktika hariç tüm kıtalarda yaşayan 6.000\'den fazla türü olan, yaygın bir pullu sürüngen grubudur. Kelerlerin boyutları, birkaç santimetre uzunluğundaki bukalemun ve gekolardan 3 metre uzunluğundaki Komodo ejderine kadar değişir.Kelerler çoğunlukla etoburdur, genellikle \'otur ve bekle\' avcılarıdır.Kelerler, zehir, kamuflaj, refleks kanama ve kuyruklarını kurban etme ve yeniden büyütme gibi çeşitli yırtıcılara karşı uyarlanmalardan yararlanır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/timsah.jpg',
    baslik: 'Timsah',
    bilgi:
    'Timsah, sıcak bölgelerdeki akarsularda yaşayan, iri yapılı, kalın ve kabuksu derili sürüngen türlerinin genel adı. Uzaktan bakıldığında kertenkeleye benzerler. Vücutlarının üzeri, sert kemiksi plakalarla örtülüdür. Güçlü dişlerle bezenmiş, çok kuvvetli çeneleri vardır. Yalnız üst çene açılır. Etli dil, alt damağa yapışıktır. Suda yüzerken rahatça etraflarını görür, işitir ve solunum yaparlar. Gündüzleri dinlenir, çoğunlukla gece avlanırlar.'
  ),


];

class SurungenlerPage extends StatelessWidget {
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
                'Sürüngenler',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 255, 197, 175),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                "Sürüngenler (Latince: Reptilia), omurgalıların soğukkanlı, yumurtlayarak çoğalan, büyük bir sınıfı. Basitçe yılanlar, kertenkeleler, kaplumbağalar, timsahlar ve tuataralardan oluşur. Vücutlarının pul ya da benzer levhalarla kaplı olması nem kaybını en az düzeyde tutmalarını sağlar, bu sayede kurak ortamlara oldukça iyi uyum sağlarlar.",
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
