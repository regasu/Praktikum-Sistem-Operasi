exit=1;
while [[ $exit -eq 1 ]];
do

echo "1. Menu Kalkulator Loop"
echo "2. Exit"
echo -n "masukkan pilihan : "
read pilihan
case $pilihan in
1)
echo -n "Masukkan Inputan bilangan acuan : "
read acuan;
echo -n "masukkan batasan : "
read batasan;
echo "penjumlahan\n"
for ((b=1; b<=batasan ; b++));
do
let hasil=$acuan+$b
echo -e "$acuan + $b = $hasil"
done
echo "pengurangan\n"
for ((b=1; b<=batasan ; b++));
do
let hasil=$acuan-$b
echo -e "$acuan - $b = $hasil"
done  
echo "pembagian\n"
for ((b=1; b<=batasan ; b++));
do
let hasil=$acuan/$b
echo -e "$acuan / $b = $hasil"
done  
echo "perkalian\n"
for ((b=1; b<=batasan ; b++));
do
let hasil=$acuan*$b
echo -e "$acuan * $b = $hasil"
done
;;
2)  
echo "Thanks"
break ;;
esac
done
