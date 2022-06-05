import 'package:flutter/material.dart';
import '../bilgi_ekrani.dart';

List<GorselBilgiEkrani> _images = [
  GorselBilgiEkrani(
    gorsel: 'assets/images/baykus.jpg',
    baslik: 'Baykuş',
    bilgi:
    'Baykuşlar tam bir sessizlik içinde avlanır. Bütün vücudu yumuşak ve ince tüylerle kaplıdır. Tüyler, uçuş sırasında tabii bir susturucudur. Uçuş esnasında kanatlarının “pırpır” sesi duyulmaz.İri gözleri, başlarının yanında değil önündedir. Aşırı büyüklükteki gözleri, göz oyuğunda hareket edemez. Araba farı gibi yuvalarında sabittir. Baykuşlar boynunu 270 derece çevirerek panoramik bir görüş sağlayarak çevresini kontrol edebilir.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/muhabbet.jpg',
    baslik: 'Muhabbet Kuşu',
    bilgi:
    'Muhabbet kuşu, papağan türleri içerisinde yer alan, evcil bir kuş türü.Bu alımlı dış görünüşlerinden ötürü, muhabbet kuşları, dünya genelinde yoğun olarak evcil olarak beslenmektedir. Doğal ortamlarında ağırlıklı olarak tohumla beslenen bu tür, Avustralya\'nın kurak bölgelerindeki zorlu koşullarda beş milyon yıldan beri varlıklarını sürdürmektedir.Ömürleri 15 yıl kadardır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/sinekkus.jpg',
    baslik: 'Sinek Kuşu',
    bilgi:
    'Sinek kuşu veya kolibri, havada asılı kalıp kanatlarını çok hızlı çırparak durabilmeleriyle tanınırlar. Türüne bağlı olarak saniyede 15 ila 80 kez kanat çırpabilirler.Geriye doğru ve dikey olarak uçabilirler ve çiçeklerin nektarlarını ince gagalarıyla emerken sabit konumda kalabilirler.Kanatlarını hızlıca çırpmaları, insanın ağzı kapalıyken ses çıkartmaya çalışmasına benzer bir ses sunar. Bu yüzden İngilizce\'de "hummingbird" (hımlayan kuş) ismini almıştır.'
  ),
  GorselBilgiEkrani(
    gorsel: 'assets/images/papagan.jpg',
    baslik: 'Papağan',
    bilgi:
    'Papağanlar, Psittaciformes takımını oluşturan kıvrık gagalı, etli ve kalın dilli, parlak tüylü, sıcak yerlerde yaşayan kuşlardır. Ayrıca bu kuşların bazı türleri söylediğiniz bazı şeyleri tekrar edebilirler.Papağanlar tabii halde ağaçlarda yaşarlar. Ancak insan sesini ve melodileri ezberleyerek tekrarlama kabiliyetlerinden dolayı, birçok evde kafeslerde beslenirler. Yuvalarını ağaç kovuklarına, kaya yarıklarına yaparlar. Eşler birbirlerine bağlıdır. İri yapıda olanların dişileri yılda 2-3, küçükleri ise daha çok yumurta yaparlar.'
  ),


];

class KuslarPage extends StatelessWidget {
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
                'Kuşlar',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 141, 255, 207),
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
