IP=0;
jumlah=0;
loop=1;
index_npm=0;
index_nama=0;
index_kelas=0
index_mk1=0;
index_mk2=0;
index_mk3=0;

declare -a nilai
declare -a mk1
declare -a mk2
declare -a mk3
declare -a ip
declare -a npm
declare -a nama
declare -a kelas

while [[ loop -eq 1 ]]; do
    echo "Menu Program Praktikum : ";
    echo "1. input data mahasiswa";
    echo "2. input data nilai mata kuliah";
    echo "3. view data mahasiswa dan nilai";
    echo "4. view data mahasiswa dengan IP";
    echo "5. Keluar Program";
    read temp;

    case "$temp" in
        "1" )
        echo "Input Npm mahasiswa :";
        read npm[$index_npm];
        let index_npm=$index_npm+1;

        echo "input Nama mahasiswa :"
        read nama[$index_nama];
        let index_nama=$index_nama+1;

        echo "input kelas mahasiswa :"
        read kelas[$index_kelas];
        let index_kelas=$index_kelas+1;
            ;;
        "2" )
        echo "Nilai Sisop : "
        read mk1[$index_mk1];
        let index_mk1=$index_mk1+1;
        
        echo "Nilai Metnum : "
        read mk2[$index_mk2];
        let index_mk2=$index_mk2+1;

        echo "nilai Basdat :"
        read mk3[$index_mk3];
        let index_mk3=$index_mk3+1;
            ;;
        "3" )
        for (( i = 0; i < $index_npm; i++ )); do
            echo "NPM : ${npm[$i]}";
            echo "Nama : ${nama[$i]}"
            echo "kelas : ${kelas[$i]}"
            echo "Nilai sisop : ${mk1[$i]}";
            echo "Nilai metnum : ${mk2[$i]}";
            echo "Nilai Basdat : ${mk3[$i]}";
            echo ""
        done
            ;;
        "4" )
        for (( i = 0; i < $index_npm; i++ )); do
            if [[ $index_mk1 -eq 0 ]]; then
                echo "data invalid"
            else
                let jumlah=${mk1[$i]}+${mk2[$i]}+${mk3[$i]};
                let IP=$jumlah/3;
            
                echo "NPM : ${npm[$i]}";
                echo "Nama : ${nama[i]}";
                echo "kelas : ${kelas[$i]}";
                echo "IP : $IP";    
            fi
            
        done
            ;;
        "5" )
        let loop=2;
            ;;
    esac

done
