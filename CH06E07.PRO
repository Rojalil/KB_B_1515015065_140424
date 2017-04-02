/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E07.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - determ (i,o)
  factorial_aux(unsigned,real,unsigned,real) - determ (i,o,i,i)

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- %ini adalah rule yang di buat untuk menentukan nilai dari factorial_aux
	factorial_aux(N,FactN,1,1.0). %factrorial_aux memiliki nilai seperti di samping

  factorial_aux(N,FactN,I,P):- %setelah itu factorial_aux di lacak, dan factorial_aux sendiri memiliki rule tersendiri.
  
	I <= N,!, /*maksudnya jika nilai I kurang dari sama dengan N, maka proses lacak balik untuk
	fakta yang sama akan dihentikan, sehingga factorial_aux(N,FactN,I,P) yang ada di paling bawah tidak akan 
	dieksekusi, kecuali nilai I sudah lebih besar dari pada N  */
	
	NewP = P * I, /*sintaks untuk menentukan Nilai NewP dengan cara mengalikan nilai P dan nilai I, sebelumnya kita tahu bahwa nilai P adalah 1.0 dan nilai
	I adalah 1. hal ini di dapat dari penentuan nilai yang di jalankan pada factorial(N,FactN).*/
	 
	NewI = I + 1, /*penentuan nilai NewI di dapat dari nilai I + 1*/
	
	factorial_aux(N,FactN,NewI,NewP). /*setelah itu akan di lakukan fungsi rekrusif, yaitu pemanggilan diri sendiri
	yang di lakukan oleh factorial_aux.dengan mengirim nilai NewI dan NewP. sehingga nilai I=NewI, dan nilai P=NewP.
	hal ini akan terus dilakukan sampai rule dari fakta factorial_aux tidak terpenuhi*/

  factorial_aux(N,FactN,I,P) :- /*fakta factorial_aux yang beada disni akan di jalankan jika rule dari factorial_aux sebelumnya
  tidak terpenuhi, sehinggan fakta dari factorial_aux yang ini akan di eksekusi.*/
  
	I > N, /*Rule yang di buat untuk untuk menentukan jika nilai I lebih besar dari N*/
	
	FactN = P. /*setelah diketahui nilai I lebih besar Dari N, maka nilai dari FactN akan di isi oleh nilai dari P
	jika nilai FactN sudah didapatkan, maka nilai inilah yang akan menjadi nilai X pada goal yang kita cari*/

goal
  factorial(3,X). /*goal yang ingin dicari jika nilai N = 3*/