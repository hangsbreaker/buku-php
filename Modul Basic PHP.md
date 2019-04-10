# Modul Basic PHP

# Apa itu PHP?

PHP adalah singkatan dari (`Hyper Preprocessor`) yaitu sebuah bahasa pemrograman bersifat `open-source` yang secara khusus dibuat untuk keperluan pengembangan web dan juga bisa digabungkan dengan HTML. Namun PHP juga dapat memenuhi kebutuhan lain yang memerlukan scripting, Seperti perhitungan cepat, algoritma dan lainya.



## Apa yang bisa dilakukan PHP?

Apa pun. PHP utamanya berfokus pada pemrosesan sisi server, sehingga Anda dapat melakukan apa saja yang bisa dilakukan oleh program CGI lainnya, seperti mendapatkan data dari form, menghasilkan konten halaman yang dinamis, atau mengirim dan menerima cookie. Tetapi PHP dapat melakukan lebih banyak lagi.



### Tiga area utama yang dijangkau oleh PHP

- Pemrosesan pada sisi server. Ini adalah target utama dan paling tradisional untuk PHP. Namun Anda memerlukan tiga hal untuk membuatnya berfungsi: PHP Parser (modul CGI atau server), server web, dan browser web. Anda perlu menjalankan server web, dengan instalasi PHP yang terhubung. Anda dapat mengakses output program PHP dengan browser web, melihat halaman PHP melalui server. Semua ini dapat berjalan di mesin milik anda jika Anda hanya bereksperimen dengan pemrograman PHP. Lihat bagian instruksi instalasi untuk informasi lebih lanjut.
- Command Line Scripting. Anda dapat membuat skrip PHP untuk menjalankannya tanpa server atau browser apa pun. Anda hanya perlu parser PHP untuk menggunakannya dengan cara ini. Jenis penggunaan ini sangat ideal untuk skrip yang dieksekusi secara teratur menggunakan cron (di * nix atau Linux) atau Penjadwal Tugas (pada Windows). Skrip ini juga dapat digunakan untuk tugas pemrosesan teks sederhana. 
- Membuat aplikasi desktop. PHP mungkin bukan bahasa terbaik untuk membuat aplikasi desktop dengan user interface grafis yang indah, tetapi jika Anda mengenal PHP dengan baik, dan ingin menggunakan beberapa fitur cangih PHP di aplikasi sisi klien Anda, Anda juga dapat menggunakan PHP-GTK untuk tulis program semacam itu. Anda juga memiliki kemampuan untuk menulis aplikasi lintas platform dengan cara ini. Namun PHP-GTK adalah ekstensi dari PHP, tidak tersedia di distribusi utama. 

## Aturan menulis kode PHP

Menulis kode PHP memiliki beberapa aturan, Aturan-aturan ini digunakan dan diimplementasikan pada banyak situasi. Berikut ini beberapa aturan peulisan kode PHP.

### Basic syntax tag php

#### Menulis kode PHP murni

Menulis kode PHP murni bisa menggunakan 3 cara yaitu dengan.

1. Classic tag

   ```php
   <?php .... ?>
   ```
   Itu adalah tag paling basic dan universal yang digunakan untuk menulis kode php.

2. Open tag

   ```php
   <?= .... ?>
   ```

  Itu adalah tag alternatife yang digunakan dalam keadaan jika kode php butuh hanya 1 line saja, Artinya kode phpnya sangat simple dan pendek.



Sebenarnya ada dua tag lagi yang belum ditulisa, Namun karena tag itu sudah tidak dapat digunakan pada versi PHP (7.x) saat penulis menulis ini, Maka tag tersebut tidak dimasukan.



Menulis tag pembuka php yang pertama `classic tag` biasanya digunakan saat kode php bercampur dengan HTML, atau bahasa pemrograman lainya. Namun jika kode php murni dijalankan tanpa ada campuran dari HTML atau bahasa pemrograman lainya, Maka penulisa kode php cukup seperti ini

```php
<?php 
    ...
    ...
    ...
```



Ditulis tanpa mengunakan penutup `?>` namun jika ingin digunakan penutup juga tidak masalah, Karena ini hanya standarisasi penulisan.

### Case Sensitivity dan Case Insensitive 

Apa itu Case Sensitivity yaitu penulisan huruf kapital atau huruf kecil diartikan sebagai sesuatu yang berbeda, Contohnya saat penulisan sebuah variable.

```php
<?php 
    $nama = "kucing";
	$Nama = "Kucing";
	$NAMA = "KUCING";
```

Penulisan nama berikut berbeda, Meskipun dibaca sama sama nama, Namun artinya berbeda. 



Apa itu Case Insensitive yaitu penulisan yang mengabaikan huruf kapital atau lainya, dan mengaggapnya sama. Beberapa contoh yaitu penulisan `echo`.

```php
<?php 
    echo "Kelinci";
	Echo "Kelinci";
	eCho "Kelinci";
	ECho "Kelinci";
```

Penulisan tersebut akan berarti sama karena memang beberapa fungsi di php mengabaikan case sensitive.





## Mendefinisikan Variable

Variable adalah

```php
<?php
    $string = "Nikko Enggaliano";
	$integer = 17;
	$float  = 99.9;
	$boolean = true; 
	$boolean2 = false;
```



## Mendefinisikan Array

Array adalah 

```php
<?php 
    $array = [1,2,3,4,5,6];
	$array2 = array(1,2,3,4,5,6);
	$array3 = array('nama' => 'rotan','harga' => 1000);
```



## Membuat Output

### Output pada variable biasa

```php
<?php 
    $nama = "Nikko Enggaliano";
	echo "Ini adalah sebuah output";
	echo $nama;
	echo "Halo nama saya ".$nama;
	print $nama;
	print "Haloo Dunia!";
```



### Output pada sebuah array

```php
<?php 
    $buah = ['Durian', 'Apel', 'Jeruk'];
	$hewan = array('Ikan', 'Kucing', 'Nyamuk');
	$hewan2 = array('nama' => 'Ikan', 'harga' => 1000);

	print_r($buah);
	print_r($hewan);
	print_r($hewan2);
```

### Ouput element of array

```php
<?php 
    $buah = ['Durian', 'Apel', 'Jeruk'];
	$hewan = array('Ikan', 'Kucing', 'Nyamuk');
	$hewan2 = array('nama' => 'Ikan', 'harga' => 1000);
	
	echo $buah[1];
	echo $hewan[0];
	echo $hewan2['nama'];
```



## Built in Function

### Manipulasi String

#### strtolower

```php
<?php
$var = "Nikko Enggaliano";
echo strtolower($var);
echo strtolower("Nikko Enggaliano");
```

#### strtoupper

```php
<?php

$var = "Nikko Enggaliano";
echo strtoupper($var);
echo strtoupper("Nikko Enggaliano");
```

#### strlen

```php
<?php
    $var = "Nikko";
echo strlen($var);
echo strlen("Nikko Enggaliano");
```

### Return Value

#### rand

```php
<?php 
echo rand();
```

```php
<?php 
echo rand(1,100);
```

#### date_default_timezone_set

```php
<?php 
date_default_timezone_set("Asia/Jakarta");
```



#### date

```php
<?php
date_default_timezone_set("Asia/Jakarta");
echo date("d - D - m - M - y - Y");
echo date("d:D");
echo date("m:M");
echo date("y:Y");
```

#### time

```php
<?php
    echo time();
```

### Stop Process

#### exit

```php
<?php
    exit;
```

#### die

```php
<?php
    die('Program berhenti');
```



## if dan else

```php
<?php
    $nilai1 = 100;
	$nilai2 = 1000;
if($nilai1 > $nilai2){
    echo $nilai1." Lebih besar!";
}else{
    echo $nilai2." Lebih besar!";
}
```



#### elseif

```php
<?php
    $nilai1 = 100;
	$nilai2 = 1000;
if($nilai1 > $nilai2){
    echo $nilai1." Lebih besar!";
}elseif($nilai1 == $nilai2){
    echo "Dua nilai sama besar!";
}else{
    echo $nilai2." Lebih besar!";
}
```



### switch case

```php
<?php 
    $buah = 'apel';
switch($buah){
    case 'jeruk':
        echo 'Enak';
        break;
            case 'apel':
        echo 'Lezat';
        break;
    default:
        echo 'Hmmm';
        break;
}
    
```



## Looping

### For Loop

```php
<?php 
    for($i=0; $i<10; $i++){
        echo $i;
    }
```

#### Reverse loop

```php
<?php
    for($i=100; $i>0; $i--){
        echo $i;
    }
```

### For Each

```php
<?php
    $buah = ['apel', 'jeruk', 'durian'];
foreach($buah as $isi){
    echo $isi." ";
}
```



#### Each with key

```php
<?php 
    $hewan = ['kucing', 'kelinci', 'kijang'];
foreach($hewan as $key => $isi){
    echo $key."->".$isi." ";
}
```



### While

```php
<?php
    $count = 10;
while($count < 100){
    echo $count;
    $count++;
}
```



#### Reverse while

```php
<?php
    $count= 100;
while($count > 5){
    echo $count;
    $count--;
}
```



### Do While

```php
<?php
    $count = 100;
do{
    echo $count;
    $count--;
}while($count > 10);
```





### Custom function

```php
<?php
    function tambah($satu,$dua){
    return ($satu+$dua);
}

echo tambah(10,10);

```

```php
<?php 
    function kurang($satu,$dua){
    echo ($satu-$dua);
}
kurang(100,125);
```

