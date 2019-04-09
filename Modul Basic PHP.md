# Modul Basic PHP

## Mendefinisikan Variable



```php
<?php
    $string = "Nikko Enggaliano";
	$integer = 17;
	$float  = 99.9;
	$boolean = true; 
	$boolean2 = false;
```



## Mendefinisikan Array

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

