//  Nama: Angello Ad Harvel Sitorus
//  NIM: 261401053

program Kuis1;

uses crt;

var 
    n : array[1..10] of integer;
    i, BanyakPelanggan, WaktuTunggu, Total: integer;
    Rerata: real;
// 3 5 2 4
begin
    clrscr;
    writeln('=====PROGRAM KASIR=====');
    write('Banyaknya Pelanggan: '); readln(BanyakPelanggan);

    for i := 1 to BanyakPelanggan do 
    begin
        write('Waktu Layanan Pelanggan ke-', i, ' (dalam menit): '); readln(n[i]);
    end;

    clrscr;
    for i := 1 to BanyakPelanggan do 
    begin
        writeln('Orang', i, ': ', WaktuTunggu, ' menit');
        Total := Total + WaktuTunggu;
        WaktuTunggu := WaktuTunggu + n[i];
    end;

    Rerata := Total / BanyakPelanggan;
    write('Rata-rata: ', Rerata:0:2, ' menit');
end.