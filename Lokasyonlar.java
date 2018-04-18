package kurulum;

import model.Il;
import model.Ilce;
import model.Koy;
import model.Mahalle;

public class Lokasyonlar {
     public Object[] tumLokasyonlar()
     {
    	 Il il1 = new Il("Ankara");
         Il il2 = new Il("Izmir");
         Il il3 = new Il("Istanbul");
         Ilce ilce1 = new Ilce("Besiktas",il3);
         Ilce ilce2 = new Ilce("Kadikoy",il3);
         Ilce ilce3 = new Ilce("Uskudar",il3);
         Ilce ilce4 = new Ilce("Mamak",il1);
         Ilce ilce5 = new Ilce("Ulus",il1);
         Ilce ilce6 = new Ilce("Yeni mahalle",il1);
         Ilce ilce7 = new Ilce("Gaziemir",il2);
         Ilce ilce8 = new Ilce("Konak",il2);
         Ilce ilce9 = new Ilce("Karsiyaka",il2);
         Koy koy1 = new Koy("Etiler",ilce1);
         Koy koy2 = new Koy("Nisantasi",ilce1);
         Koy koy3 = new Koy("Acibadem",ilce2);
         Koy koy4 = new Koy("Bostanci",ilce2);
         Koy koy5 = new Koy("Ahmediye",ilce3);
         Koy koy6 = new Koy("Altunizade",ilce3);
         Koy koy7 = new Koy("Kibris koyu",ilce4);
         Koy koy8 = new Koy("Kizilca Koyu",ilce4);
         Koy koy9 = new Koy("Heykel",ilce5);
         Koy koy10 = new Koy("Altindag",ilce5);
         Koy koy11 = new Koy("Alacaatli",ilce6);
         Koy koy12 = new Koy("Asagi yurtcu",ilce6);
         Koy koy13 = new Koy("Beyazeveler",ilce7);
         Koy koy14 = new Koy("Gazikent",ilce7);
         Koy koy15 = new Koy("Harbiye",ilce8);
         Koy koy16 = new Koy("Merkez",ilce8);
         Koy koy17 = new Koy("Sancakli",ilce9);
         Koy koy18 = new Koy("Yamanlar",ilce9);
         Mahalle mahalle1 = new Mahalle("Bebek",koy1);
         Mahalle mahalle2 = new Mahalle("Akat Mahallesi",koy1);
         Mahalle mahalle3 = new Mahalle("Cihannuma",koy2);
         Mahalle mahalle4 = new Mahalle("Konaklar",koy2);
         Mahalle mahalle5 = new Mahalle("Fenerbahce",koy3);
         Mahalle mahalle6 = new Mahalle("Erenkoy",koy3);
         Mahalle mahalle7 = new Mahalle("Fikirtepe",koy4);
         Mahalle mahalle8 = new Mahalle("Goztepe",koy4);
         Mahalle mahalle9 = new Mahalle("Kozyatagi",koy5);
         Mahalle mahalle10 = new Mahalle("Caferaga",koy5);
         Mahalle mahalle11 = new Mahalle("19 Mayis Mahallesi",koy6);
         Mahalle mahalle12 = new Mahalle("Kosuyolu",koy6);
         Mahalle mahalle13 = new Mahalle("Hasan pasa",koy7);
         Mahalle mahalle14 = new Mahalle("Suadiye",koy7);
         Mahalle mahalle15 = new Mahalle("Bulgurlu",koy8);
         Mahalle mahalle16 = new Mahalle("Cumhuriyet mahallesi",koy8);
         Mahalle mahalle17 = new Mahalle("Barbaros",koy9);
         Mahalle mahalle18 = new Mahalle("Beylerbeyi",koy9);
         Mahalle mahalle19 = new Mahalle("Cengelkoy",koy10);
         Mahalle mahalle20 = new Mahalle("Balkiraz",koy10);
         Mahalle mahalle21 = new Mahalle("Ballikuyumcu",koy11);
         Mahalle mahalle22 = new Mahalle("Susuz",koy11);
         Mahalle mahalle23 = new Mahalle("Fevziye",koy12);
         Mahalle mahalle24 = new Mahalle("Memlik",koy12);
         Mahalle mahalle25 = new Mahalle("Yakacik",koy13);
         Mahalle mahalle26 = new Mahalle("Yuva",koy13);
         Mahalle mahalle27 = new Mahalle("Sehit Ali",koy14);
         Mahalle mahalle28 = new Mahalle("Karacakaya",koy14);
         Mahalle mahalle29 = new Mahalle("Kusunlar",koy15);
         Mahalle mahalle30 = new Mahalle("Beyazevler",koy15);
         Mahalle mahalle31 = new Mahalle("Aktepe",koy16);
         Mahalle mahalle32 = new Mahalle("Gazi",koy16);
         Mahalle mahalle33 = new Mahalle("Fatih",koy17);
         Mahalle mahalle34 = new Mahalle("Menderes",koy17);
         Mahalle mahalle35 = new Mahalle("Sevgi",koy18);
         Mahalle mahalle36 = new Mahalle("Hurriyet",koy18);
         Object[] array = { il1, il2, il3, ilce1, ilce2, ilce3, ilce4, ilce5,ilce6,ilce7,ilce8,ilce9,
            koy1,koy2,koy3,koy4,koy5,koy6,koy7,koy8,koy9,koy10,koy11,koy12,koy13,koy14,koy15,koy16,koy17,
            koy18,mahalle1,mahalle2,mahalle3,mahalle4,mahalle5,mahalle6,mahalle7,mahalle8,mahalle9,mahalle10,
            mahalle11,mahalle12,mahalle13,mahalle14,mahalle15,mahalle16,mahalle17,mahalle18,mahalle19,mahalle20,
            mahalle21,mahalle22,mahalle23,mahalle24,mahalle25,mahalle26,mahalle27,mahalle28,mahalle29,
            mahalle30,mahalle31,mahalle32,mahalle33,mahalle34,mahalle35,mahalle36};
         return array;
     }
}
