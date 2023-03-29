

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cloneApp extends StatefulWidget {
  const cloneApp({super.key});

  @override
  State<cloneApp> createState() => _cloneAppState();
}
List name = ["Emlak","Vasıta","Yedek Parça, Aksesuar, Donanım","İkini El Ve Sıfır Alışveriş","İş Makineleri & Sanayi","Ustalar ve Hizmetler","Özel Ders Verenler","İş İlanları","Yardımcı Arayanlar","Hayvanlar Alemi"];
List subTitle = [
   "Konut, İş Yeri Arsa, Konut Projeleri Bina, Devre Mülk, Turistik Tesis",
   "Otomobil ,Arazi, Suv & Pickup, Motosiklet, Minivan & Panelvan, Ticari Araçlar, Elektrikli Araçlar, Kiralık Araçlar, Deniz Araçları, Hasarlı Araçlar, Klasik Araçlar, Modifiye Araçlar, Hava Araçları, ATV, UTV, Karavan, Engelli Plakalı Araçlar",
   "Otomotiv Ekipmanları, Motosiklet Ekipmanları, Deniz Aracı Ekipmanları",
   "Bilgisayar, Cep Telefonu, Fotoğraf & Kamera, Ev Dekorasyon, Ev Elektroniği, Elektrikli Ev Aletleri, Giyim & Aksesuar, Saat, Anne & Bebek, Kişisel Bakım & Kozmetik, Hobi & Oyuncak",
   "İş Makineleri, Tarım Makineleri, Sanayi, Elektrik & Enerji",
   "Ev Tadilat & Dekorasyon, Nakliye, Araç Servis & Bakım, Tamirat & Teknik Servis, Düğün & Etkinlik, Diğer, Acil!",
   "Lise & Üniversite, İlkokul & Ortaokul, Yabancı Dil, Bilgisayar, Direksiyon, Spor, Sanat, Dans, Müzik & Enstrüman, Tiyatro & Oyunculuk, Kişisel Gelişim, Mesleki Dersler, Özel Eğitim, Çocuk Gelişim, Güzel Konuşma & Diksiyon, Fotoğrafçılık",
   "Avukatlık & Hukuki Danışmanlık, Eğitim, Eğlence ve Aktivitiler, Güzellik ve Bakım, IT ve Yazılım Geliştirme, İnsan Kaynakları, İnşaat ve Yapı, İşletme ve Statejik Yönetim, Koruma ve Güvenlik, Lojistik ve Taşıma, Mağazacalık ve Perakendecilik, Muhasebe, Finans ve Bankacılık, Mühendislik, Müşteri Hizmetleri, Ofis Yönetimi Ve İdari işler, Part Time ve Ek İş Fırsatları, Pazarlama ve Ürün Yönetimi, Radyo, Sinema & Televizyon, Restoran ve Konaklama, Sağlık, Satış, Tamir ve Bakım, Tarım ve Hayvancılık, Tasarım ve Yaratıcılık, Tekstil ve Konfeksiyon, Üretim ve İmalat",
  "Bebek & Çocuk Bakıcısı, Yaşlı & Hasta Bakıcısı, Temizlikçi & Ev İşlerine Yardımcı",
   "Evcil Hayvanlar, Akvaryum Balıklerı,  Aksesuar, Bakım Ürünler, Yem & Mama, Kümes Hayvanları, Büyükbaş Hayvanlar, Küçükbaş Hayvavnvlar, Deniz Canlıları, Sürüngenler, Böcekler"];

int currenPage=0;
class _cloneAppState extends State<cloneApp> {
  @override
  Widget build(BuildContext context) {
        return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        title: Text("Arama"),
          leading : Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                // height: 100,
                // width: 100,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqpJ9tgbCCXllIpuJyOkW9TlE4GNnnfLkXNvbrshPGYmn-5_W9BaRe1rfDu389NJU2i7o&usqp=CAU",fit: BoxFit.fill,)),
          ),
        actions: [
          IconButton(onPressed: () {
          }, icon: Icon(Icons.camera_alt_rounded)),
        ],
      ),
      
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                    decoration: InputDecoration(
                    hoverColor: Colors.black,
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                    suffixIcon: Icon(Icons.mic_sharp, color: Colors.black,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: "Kelime ve ilan numarası giriniz"
                  ),  
                ),
             ),
              Expanded(
                child: ListView(   
                  children: ListTile.divideTiles(
                  context: context,  
                  tiles: [
                      ListTile(
                        title: Text(name[0]),
                        subtitle: Text(subTitle[0],overflow: TextOverflow.ellipsis,),
                        leading: CircleAvatar(backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20190425/ourmid/pngtree-vector-home-icon-png-image_991177.jpg")),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ListTile(
                      title: Text(name[1]),
                      subtitle: Text(subTitle[1],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://st2.depositphotos.com/4063385/6023/v/950/depositphotos_60232633-stock-illustration-steering-wheel.jpg")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[2]),
                      subtitle: Text(subTitle[2],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://www.denizkiranmakina.com/lib/images/home/4820_Caterpillar_yedek_parca_ve_tamir_bakim.png")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[3]),
                      subtitle: Text(subTitle[3],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/573003144/stock-vector-shopping-cart-simple-illustration")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[4]),
                      subtitle: Text(subTitle[4],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://st2.depositphotos.com/7358038/10205/v/600/depositphotos_102056460-stock-illustration-outline-tractor-icon.jpg")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),

                    ),
                    ListTile(
                      title: Text(name[5]),
                      subtitle: Text(subTitle[5],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://www.astadilat.com/wp-content/uploads/boya-icon-1.png")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[6]),
                      subtitle: Text(subTitle[6],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/702/612/png-transparent-white-and-yellow-book-illustration-scalable-graphics-book-icon-an-open-book-angle-comic-book-reading.png")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[7]),
                      subtitle: Text(subTitle[7],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://e7.pngegg.com/pngimages/518/320/png-clipart-computer-icons-mobile-app-development-android-my-account-icon-blue-text.png")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[8]),
                      subtitle: Text(subTitle[8],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/originals/2b/09/d4/2b09d4403b8fc5cdb92bf1afd561ef0a.png")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    ListTile(
                      title: Text(name[9]),
                      subtitle: Text(subTitle[9],overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://img3.stockfresh.com/files/y/ylivdesign/m/17/5390541_stock-vector-new-paw-icon-button-flat.jpg")),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                  ).toList()
                ),
              ),
            ],
          ),
      ),
    );
  }  
  }
