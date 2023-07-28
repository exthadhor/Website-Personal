<!DOCTYPE html>

<?php
include 'koneksi.php';
session_start();


$id = '';
$nama = '';
$nip = '';
$jenis_kelamin = '';
$no_hp = '';
$spesialis = '';
$alamat = '';

if (isset($_GET['ubah'])) {
    $id = $_GET['ubah'];

    $query = "SELECT * FROM dokter WHERE id = '$id';";
    $sql = mysqli_query($conn, $query);

    $result = mysqli_fetch_assoc($sql);

    $nama = $result['nama'];
    $nip = $result['nip'];
    $jenis_kelamin = $result['jenis_kelamin'];
    $no_hp = $result['no_hp'];
    $spesialis = $result['spesialis'];
    $alamat = $result['alamat'];

    //var_dump($result);

    //die();
}
?>

<html>

<head>
    <meta charset="utf-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.bundle.min.js"></script>

    <!-- Font awesome -->
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css">

    <title>DATA DOKTER</title>
</head>

<body>
    <nav class="navbar navbar-light bg-danger mb-4">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="index.php">
                <strong>
                    <i class="fa fa-code fa-lg"></i>
                    &nbsp;Home
                </strong>
            </a>
        </div>
    </nav>
    <div class="container">
        <form method="POST" action="proses.php" enctype="multipart/form-data">
            <input type="hidden" value="<?php echo $id; ?>" name="id">
            <div class="mb-3 row">
                <label for="nama" class="col-sm-2 col-form-label">
                    NAMA
                </label>
                <div class="col-sm-10">
                    <input required type="text" name="nama" class="form-control" id="nama" placeholder="isi" value="<?php echo $nama; ?>">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="nip" class="col-sm-2 col-form-label">
                    NIP
                </label>
                <div class="col-sm-10">
                    <input required type="text" name="nip" class="form-control" id="nip" placeholder="isi" value="<?php echo $nip; ?>">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="jk" class="col-sm-2 col-form-label">
                    Jenis Kelamin
                </label>
                <div class="col-sm-10">
                    <select required id="jk" name="jenis_kelamin" class="form-select">
                        <option <?php if($jenis_kelamin == 'Laki-Laki'){ echo "selected";} ?> value="Lk" >Laki-Laki</option>
                        <option <?php if($jenis_kelamin == 'Perempuan'){ echo "selected";} ?> value="Pr" >Perempuan</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="no_hp" class="col-sm-2 col-form-label">
                    No. Hp
                </label>
                <div class="col-sm-10">
                    <input required type="text" name="no_hp" class="form-control" id="no_hp" placeholder="isi" value="<?php echo $no_hp; ?>">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="foto" class="col-sm-2 col-form-label">
                    Foto
                </label>
                <div class="col-sm-10">
                    <input <?php if(!isset($_GET['ubah'])){echo "required";} ?> class="form-control" type="file" name="foto" id="foto" accept="image/*">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="spesialis" class="col-sm-2 col-form-label">
                    Spesialis
                </label>
                <div class="col-sm-10">
                    <input required type="text" name="spesialis" class="form-control" id="spesialis" placeholder="isi" value="<?php echo $spesialis; ?>">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="alamat" class="col-sm-2 col-form-label">
                    Alamat Lengkap
                </label>
                <div class="col-sm-10">
                    <textarea required class="form-control" id="alamat" name="alamat" rows="3"><?php echo $alamat; ?></textarea>
                </div>
            </div>

            <div class="mb-3 row mt-4">
                <div class="col">
                    <?php
                    if (isset($_GET['ubah'])) {
                        ?>
                        <button type="submit" name="aksi" value="edit" class="btn btn-primary">
                            <i class="fa fa-floppy-o" aria-hidden="true"></i>
                            Simpan Perubahan
                        </button>
                        <?php
                    } else {
                        ?>
                        <button type="submit" name="aksi" value="add" class="btn btn-primary">
                            <i class="fa fa-floppy-o" aria-hidden="true"></i>
                            Tambahkan
                        </button>
                        <?php
                    }
                    ?>
                    <a href="index.php" type="button" class="btn btn-danger">
                        <i class="fa fa-reply" aria-hidden="true"></i>
                        Batal
                    </a>
                </div>
            </div>
        </form>
    </div>
</body>

</html>
