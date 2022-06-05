import 'package:flutter/material.dart';
import '../bilgi_ekrani.dart';

List<GorselBilgiEkrani> _images = [
  GorselBilgiEkrani(
    gorsel: 'assets/images/kurbaga.jpg',
    baslik: 'Kurbağa',
    bilgi:
    'Kuyruksuz kurbağalar (Latince: Anura),"kuyruksuz" demektir.Erişkinlerinin uzun arka bacaklar, tıknaz gövde, araları zarlı parmaklar, çıkık gözler ve kuyruksuzluk gibi özellikleri bulunan kurbağaların büyük çoğunluğu yarı sucul bir yaşam sürer ama tırmanarak ya da zıplayarak karada da rahatça hareket edebilirler.Çiftleşme döneminde ve halk arasında "vıraklama" olarak anılan seslenişleriyle dikkat çekerler. Çoğunluğu tropik yağmur ormanlarında olmak üzere, toplam 33 familyaya dağılmış yaklaşık 5250 türü bulunur, çeşitliliği en fazla olan omurgalılardandır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/semender.jpg',
    baslik: 'Semender',
    bilgi:
    'Kuyruklu kurbağalar ya da Semenderler (Caudata ya da Urodela), iki yaşamlıların yaklaşık 500 türünün ortak adıdır. Vücutları uzunlamasınadır ve uzun kuyrukludurlar.Gölgeli ve nemli yerleri sever; Çoğunlukla gece canlanır ve avlanır. Çiftleşme, ya ilkbaharda ya da yazın sığ sularda ya da nemli toprakta yapılır. Dişi tohum torbasını bir sonraki ilkbahara kadar taşır, 20-40 kadar yavru yaklaşık 6-9 ay kurkçuk olarak kalır. Tehlikede yakıcı bez salgılarım boşaltır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/aksolotl.jpg',
    baslik: 'Aksolotl Semenderi',
    bilgi:
    'Ambystoma mexicanum veya aksolotl,semender türüdür.Bu türün larvaları başkalaşım geçirmezler, bu nedenden yetişkinleri suda yaşar ve solungaçları vardır. Bu türün habitatı asıl olarak Meksika Chalco Gölü ve Meksika\'nın dağ gölleridir.Aksolotllar, vücutlarının çeşitli parçalarını ve uzuvlarını yeniden üretebilme yeteneğine sahip olduklarından, kolay üretilebildiklerinden ve embriyolarının büyük oluşundan dolayı bilimsel araştırmalarda yaygın olarak kullanılır. Birçok ülkede ev hayvanı olarak da yetiştirilmektedir.'
  ),

 

];

class AmfibilerPage extends StatelessWidget {
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
                'Amfibiler',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                "XXXXX, yavrularını beslemek için meme bezlerinden süt üretip salgılar. Vücutlarında çokca kıllar vardır, kıllar soğukta hayatta kalmalarını sağlar. (Görsellere dokunun)",
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
