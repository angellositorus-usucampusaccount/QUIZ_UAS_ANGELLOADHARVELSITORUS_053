//  Nama: Angello Ad Harvel Sitorus
//  NIM: 261401053

program Kuis3;

uses crt;

var 
    belanja : longint;
    member : char;
    hari : string;
    bayar : real;
    diskon : real;

begin
    clrscr;
    writeln('=====PROGRAM KAFE=====');
    writeln('Selamat datang di kafe kami ^_^...');
    write('Berapa total belanjanya: '); readln(belanja);
    write('Apakah Member (Y/T): '); readln(member);
    write('Hari belanja: '); readln(hari);

    if (hari = 'jumat') and (belanja >= 100000) and (member = 'Y') then
    begin
        diskon := 12;
        bayar := belanja - (belanja * (diskon/100));
        bayar := round(bayar);
    end;

    if (hari <> 'jumat') and (belanja >= 100000) and (member = 'Y') then
    begin
        diskon := 15;
        bayar := belanja - (belanja * (diskon/100));
        bayar := round(bayar);
    end;

    if (belanja >= 100000) and (member <> 'Y') then
    begin
        diskon := 10;
        bayar := belanja - (belanja * (diskon/100));
        bayar := round(bayar);
    end;

    writeln;
    writeln('^^^ Total Bayar ^^^');
    writeln('Diskon: ', diskon:0:2, '%');
    writeln('Total bayar: ', bayar:0:0);
end.    