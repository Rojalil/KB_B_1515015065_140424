 DOMAINS
  nama,kualitas = symbol

PREDICATES
  nondeterm makanan_layak(nama)
  nondeterm makanan(nama, kualitas)
  nondeterm dalam_masa_kadaluarsa(nama)
  nondeterm kemasan_rusak(nama)

CLAUSES
  makanan("Snack pilus","halal").
  makanan("roti buaya","tidak").
  makanan("Snack Garuda","halal").
  makanan("Roti Kismis","halal").
  makanan("Keripik ular","tidak").
  makanan("Mie Kriting","halal").
  makanan("mie gemez","halal").
  makanan("permen lolipop","halal").
  makanan("Chocolatos","halal").

  dalam_masa_kadaluarsa("Snack Garuda").
  dalam_masa_kadaluarsa("mie gemez").
  
  kemasan_rusak("Roti Kismis").
  kemasan_rusak("Permen lolipop").

  makanan_layak(Nama):- makanan(Nama, Kualitas),
  			Kualitas=halal,
  			not(dalam_masa_kadaluarsa(Nama)),
  			not(kemasan_rusak(Nama)).
GOAL
  write("       Makanan Yang masih Layak"),nl,nl,makanan_layak(Nama_Makanan).