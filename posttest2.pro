domains
	nama,kelamin,pekerjaan,benda= symbol
	umur = integer

predicates
	nondeterm orang(nama,umur,kelamin,pekerjaan)
	nondeterm menyukai(nama,nama)
	nondeterm suka(nama,benda)
	nondeterm memberikan(nama,nama,benda)
	nondeterm jadian(nama,nama)
	
clauses
	orang(rey,18,laki_laki,pelajar).
	orang(nina,17,perempuan,pelajar).
	orang(farhan,21,laki_laki,penjual_makanan).
	orang(santi,19,perempun,pelajar).
	orang(jono,24,laki_laki,pengusaha).
	orang(baby,20,perempuan,perawat).
	
	suka(rey,coklat).
	suka(nina,bunga).
	suka(farhan,jam).
	suka(santi,coklat).
	suka(joni,sepeda).
	suka(baby,boneka).
	
	menyukai(rey,santi).
	menyukai(nina,farhan).
	menyukai(farhan,baby).
	menyukai(baby,jono).
	menyukai(jono,baby).
	menyukai(santi,rey).
	
	memberikan(rey,santi,coklat).
	memberikan(nina,farhan,sepeda).
	memberikan(jono,baby,bunga).
	
	jadian(Orang1,Orang2) :- menyukai(Orang1,Orang2),menyukai(Orang2,Orang1),memberikan(Orang1,Orang2,Benda),suka(Orang2,Benda).
	
goal
	jadian(Orang1,Orang2).