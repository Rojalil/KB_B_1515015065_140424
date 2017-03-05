predicates
 nondeterm anak(symbol,symbol) %pendeklarasian bahwa anak akan berisi symbol,symbol
 nondeterm istri(symbol,symbol) %pendeklarasian bahwa istri akan berisi symbol,symbol
 nondeterm pria(symbol) %pendeklarasian bahwa pria akan berisi symbol
 nondeterm wanita(symbol) %pendeklarasian bahwa wanita akan berisi symbol
 nondeterm ayah(symbol,symbol) %pendeklarasian bahwa ayah akan berisi symbol,symbol
 nondeterm cucu(symbol,symbol) %pendeklarasian bahwa cucu akan berisi symbol,symbol
 nondeterm ibu(symbol,symbol) %pendeklarasian bahwa ibu akan berisi symbol,symbol
 
 %saya juga menambahkan nondeterm karena semua predict mempunya lebih dari 1 kemungkinan,juga agar lebih mudah dalam penentuan isi predict
 
clauses
anak(jalil,andi). %jalil adalah anaknya andi
anak(andi,mahathir). %andi adalah anaknya mahathir
anak(cindy,ann). %cindy adalah anaknnya ann
istri(mary,mahathir). %mary adalah istri mahathir
istri(ann,andi). %ann adalah istri andi
pria(jalil). %jalil adalah seoarang pria
pria(andi). %andi adalah seoarang pria
pria(mahathir). %mahathir adalah seoarang pria
wanita(mary). %mary adalah seoarang wanita
wanita(cindy). %cindy adalah seoarang wanita
wanita(ann). %ann adalah seorang wanita
ayah(A,B):- anak(B,A),pria(A). %lalu terdapat peraturan, A adalah ayah dari B jika B adalah anak dari A dan A adalah seorang pria
ibu(A,B):- anak(B,A),wanita(A). %A adalah ibu B jika B adalah anak A dan A adalah seorang wanita
cucu(A,B):- ayah(B,C),ayah(C,A). %A adalah cucu B jika B adalah ayah C dan C adalah ayah A
cucu(A,B):- ayah(B,C),ibu(D,A),istri(D,C). %A adalah cucu B jika B adalah Ayah C dan D adalah ibu A serta D dalah istri C

%saya menggunakan 2 kondisi untuk menemukan cucu, karena cucu dari goal yang bisa di temukan jika mempunya 2 kondisi seperti di atas

goal
cucu(Who,mahathir). %goalnya adalah untuk mencari siapa saja cucu mahathir