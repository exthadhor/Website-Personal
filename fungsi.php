<?php
include 'koneksi.php';

function tambah_data($data, $files)
{
    $nama = $data['nama'];
    $nip = $data['nip'];
    $jenis_kelamin = $data['jenis_kelamin'];
    $alamat = $data['alamat'];
    $no_hp = $data['no_hp'];
    $spesialis = $data['spesialis'];

    $split = explode('.', $files['foto']['name']);
    $ekstensi = $split[count($split) - 1];

    $foto = $nip . '.' . $ekstensi;

    $dir = "img/";
    $tmpFile = $_FILES['foto']['tmp_name'];

    move_uploaded_file($tmpFile, $dir . $foto);

    $query = "INSERT INTO dokter VALUES(null, '$nama', '$nip', '$jenis_kelamin', '$alamat', '$no_hp', '$spesialis', '$foto')";
    $sql = mysqli_query($GLOBALS['conn'], $query);

    return true;

}

function ubah_data($data, $files)
{
    $id = $data['id'];
    $nama = $data['nama'];
    $nip = $data['nip'];
    $jenis_kelamin = $data['jenis_kelamin'];
    $alamat = $data['alamat'];
    $no_hp = $data['no_hp'];
    $spesialis = $data['spesialis'];

    $queryShow = "SELECT * FROM dokter WHERE id = '$id';";
    $sqlShow = mysqli_query($GLOBALS['conn'], $queryShow);
    $result = mysqli_fetch_assoc($sqlShow);

    if ($files['foto']['name'] == "") {
        $foto = $result['foto'];
    } else {
        $split = explode('.', $files['foto']['name']);
        $ekstensi = $split[count($split) - 1];

        $foto = $result['nip'].'.'.$ekstensi;
        unlink("img/" . $result['foto']);
        move_uploaded_file($files['foto']['tmp_name'], 'img/'.$foto);
    }

    $query = "UPDATE dokter SET nama='$nama', nip='$nip', jenis_kelamin='$jenis_kelamin', alamat='$alamat', no_hp='$no_hp', spesialis='$spesialis', foto = '$foto' WHERE id='$id';";
    $sql = mysqli_query($GLOBALS['conn'], $query);

    return true;
}

function hapus_data($data)
{
    $id = $data['hapus'];

    $queryShow = "SELECT * FROM dokter WHERE id = '$id';";
    $sqlShow = mysqli_query($GLOBALS['conn'], $queryShow);
    $result = mysqli_fetch_assoc($sqlShow);

    //var_dump($result);

    unlink("img/" . $result['foto']);

    $query = "DELETE FROM dokter WHERE id = '$id';";
    $sql = mysqli_query($GLOBALS['conn'], $query);

    return true;
}

?>