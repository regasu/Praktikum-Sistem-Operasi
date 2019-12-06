#!/bin/bash

clear
loop=1;
index_nohp=0;
index_nama=0;
index_alamat=0;
index_pekerjaan=0;

	echo "======================Tugas Final Project Sistem Operasi========================"
	echo "====================Rega Suryatama Amaril haq (18081010115)====================="
	echo ""

while [[ loop -eq 1 ]]; do
	echo "-==-==-==-==-==-==-==- Selamat Datang Di Toko Bunga Mekar -==-==-==-==-==-==-==-"

    echo "========================= Menu Pembelian bibit tanaman =========================";
    echo "1. Identitas pembeli";
    echo "2. Rincian Nama Tanaman dan Harga Tanaman";
    echo "3. Transaksi Pembelian";
    echo "4. Keluar Program";
    echo -n "Masukkan Pilihan :"
    read pil;
    clear
     
    

    case "$pil" in
        "1" )
		echo "==-==-Menu Identitas Pembeli==-==-"

        echo -n "Nama pembeli 			:"
        read nama[$index_nama];
        let index_nama=$index_nama+1;

        echo -n "Alamat pembeli 			:"
        read alamat[$index_alamat];
        let index_alamat=$index_alamat+1;

        echo -n "Nomor handphone pembeli 	:"
        read nohp[$index_nohp];
        let index_nohp=$index_nohp+1;

        echo -n "Pekerjaan Pembeli 		:"
        read pekerjaan[index_pekerjaan];
        let index_pekerjaan=$index_pekerjaan+1
        
            ;;

        "2" )
		echo "-==-==- Daftar Harga bunga -==-==-"
		
		echo "1. Bunga kaktus"		
		echo "	 Harga : Rp15.000"
        
		echo "2. Bunga Lavender"
        echo "	 Harga : Rp50.000"

		echo "3. Bunga kastuba"
        echo "	 Harga : Rp70.000"

		echo "4. Bunga kuping gajah"
		echo "	 Harga : Rp125.000"

		echo "5. Tanaman hias bayam merah"
		echo "	 Harga : Rp10.000"

		echo "6. Tanaman hias bambu klisik"
		echo "	 Harga : Rp100.000"

		echo "7. Tanaman hias agave king"
		echo "	 Harga : Rp75.000"

		echo "8. Tanaman hias kaktus Gymno Super"
		echo "	 Harga : Rp150.000"

		echo "9. Bunga Mawar"
		echo "	 Harga : Rp40.000"

		echo "10.Bunga Tulip"
		echo "	 Harga : Rp265.000"

		echo "11.Bunga Sakura"
		echo "	 Harga : Rp235.000"
		

		echo "-==-==- Pembelian Jumlah Barang -==-==-"

		echo -n "Masukkan Jumlah bunga yang akan dibeli 	: "
		read bunga

		for (( i = 1; i <= bunga; i++ )); do
			echo -n "Masukkan pilihan bunga 	: "
			read pil_bunga[i]
		done		
		    ;;



        "3" )
			echo "================== TRANSAKSI PEMBELIAN BUNGA TOKO BUNGA MEKAR =================="
		HargaTotal=0
        for (( i = 1; i <= bunga; i++ )); do
        	if [[ pil_bunga[i] -eq 1 ]]; then
        		let HargaTotal=HargaTotal+15000
        	elif [[ pil_bunga[i] -eq 2 ]]; then
        		let HargaTotal=HargaTotal+50000
        	elif [[ pil_bunga[i] -eq 3 ]]; then
        		let HargaTotal=HargaTotal+70000
        	elif [[ pil_bunga[i] -eq 4 ]]; then
        		let HargaTotal=HargaTotal+125000
        	elif [[ pil_bunga[i] -eq 5 ]]; then
        		let HargaTotal=HargaTotal+10000
        	elif [[ pil_bunga[i] -eq 6 ]]; then
        		let HargaTotal=HargaTotal+100000
        	elif [[ pil_bunga[i] -eq 7 ]]; then
        		let HargaTotal=HargaTotal+75000
        	elif [[ pil_bunga[i] -eq 8 ]]; then
        		let HargaTotal=HargaTotal+150000
        	elif [[ pil_bunga[i] -eq 9 ]]; then
        		let HargaTotal=HargaTotal+40000
        	elif [[ pil_bunga[i] -eq 10 ]]; then
        		let HargaTotal=HargaTotal+265000
        	elif [[ pil_bunga[i] -eq 11 ]]; then
        		let HargaTotal=HargaTotal+235000

        	fi
        done

        echo "		==-==-==-==- Identitas Pembeli -==-==-==-=="
        for (( i = 0; i < index_nama; i++ )); do
        	echo "Nama  			:${nama[$i]}"
        	echo "alamat  		:${alamat[$i]}"
        	echo "nomor handphone  	:${nohp[$i]}"
        	echo "pekerjaan pembeli 	:${pekerjaan[$i]}"
        	echo ""

        
        done

        echo "-==-==-==- jumlah Harga yang harus dibayar dan Nama Bunga yang Dibeli -==-==-==-"
       for (( i = 0; i <= bunga; i++ )); do
       		if [[ pil_bunga[i] -eq 1 ]]; then
        		echo "Bunga yg dibeli 	:Bunga Kaktus"
        	elif [[ pil_bunga[i] -eq 2 ]]; then
        		echo "Bunga yg dibeli 	:Bunga Lavender"
        	elif [[ pil_bunga[i] -eq 3 ]]; then
        		echo "Bunga yg dibeli 	:Bunga Kastuba"
        	elif [[ pil_bunga[i] -eq 4 ]]; then
        		echo "Bunga yg dibeli 	:Bunga kuping gajah"
        	elif [[ pil_bunga[i] -eq 5 ]]; then
        		echo "Bunga yg dibeli 	:Tanaman hias bayam merah"
        	elif [[ pil_bunga[i] -eq 6 ]]; then
        		echo "Bunga yg dibeli 	:Tanaman hias bambu klisik"
        	elif [[ pil_bunga[i] -eq 7 ]]; then
        		echo "Bunga yg dibeli 	:Tanaman hias agave king"
        	elif [[ pil_bunga[i] -eq 8 ]]; then
        		echo "Bunga yg dibeli 	:Tanaman hias kaktus Gymno"
        	elif [[ pil_bunga[i] -eq 9 ]]; then
        		echo "Bunga yg dibeli 	:Bunga Mawar"
        	elif [[ pil_bunga[i] -eq 10 ]]; then
        		echo "Bunga yg dibeli 	:Bunga Tulip"
        	elif [[ pil_bunga[i] -eq 11 ]]; then
        		echo "Bunga yg dibeli 	:Bunga Sakura"
        	
			fi
		done

        echo "Harga Total 		:$HargaTotal"
        echo ""
       
       
            ;;
        
        "4" )
			echo "Terimakasih Telah Membeli Produk Kami:]"
			echo ""
			echo "Sekian Tugas Final Project Saya"
	
        let loop=2;
            ;;
    esac


done

