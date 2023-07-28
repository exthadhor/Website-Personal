<?php
include 'koneksi.php';
session_start();


$query = "SELECT * FROM dokter;";
$sql = mysqli_query($conn, $query);
$no = 0;

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.bundle.min.js"></script>

    <!-- Font awesome -->
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css">

    <!-- Data Tables -->
    <link rel="stylesheet" type="text/css" href="datatables/datatables.css">
    <script type="text/javascript" src="datatables/datatables.js"></script>

    <title>DATA DOKTER</title>
</head>

<script type="text/javascript">
    $(document).ready(function () {
        new DataTable('#dt');
    });
</script>

<body>
    <nav class="navbar navbar-light bg-danger">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="">
                <strong>
                    <i class="fa fa-code fa-lg"></i>
                    &nbsp;Tugas CRUD
                </strong>
            </a>
        </div>
    </nav>

    <!-- judul -->
    <div class="container">
        <h1 class="mt-4">Data Dokter</h1>
        <figure>
            <blockquote class="blockquote">
                <p>Sistem Manajemen Database</p>
            </blockquote>
            <figcaption class="blockquote-footer">
                CRUD <cite title="Source Title">Create Read Update Delete</cite>
            </figcaption>
        </figure>
        <a href="kelola.php" type="button" class="btn btn-primary mb-3">
            <i class="fa fa-plus"></i>
            Tambah Data
        </a>

        <?php
        if (isset($_SESSION['eksekusi'])):
            ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>
                    <?php
                    echo $_SESSION['eksekusi'];
                    ?>
                </strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php
            session_destroy();
        endif;
        ?>


        <div class="table-responsive">
            <table id="dt" class="table align-middle table-bordered table-hover">
                <thead>
                    <tr>
                        <th>
                            <center>NO.</center>
                        </th>
                        <th>NAMA</th>
                        <th>NIP</th>
                        <th>JENIS KELAMIN</th>
                        <th>ALAMAT</th>
                        <th>NO HP</th>
                        <th>SPESIALIS</th>
                        <th>FOTO</th>
                        <th>AKSI</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    while ($result = mysqli_fetch_assoc($sql)) {
                        ?>
                        <tr>
                            <td>
                                <center>
                                    <?php echo ++$no; ?>
                                </center>
                            </td>
                            <td>
                                <?php echo $result['nama']; ?>
                            </td>
                            <td>
                                <?php echo $result['nip']; ?>
                            </td>
                            <td>
                                <?php echo $result['jenis_kelamin']; ?>
                            </td>
                            <td>
                                <?php echo $result['alamat']; ?>
                            </td>
                            <td>
                                <?php echo $result['no_hp']; ?>
                            </td>
                            <td>
                                <?php echo $result['spesialis']; ?>
                            </td>
                            <td>
                                <img src="img/<?php echo $result['foto']; ?>" style="width: 150px;">
                            </td>
                            <td>
                                <a href="kelola.php?ubah=<?php echo $result['id']; ?>" type="button"
                                    class="btn btn-success btn-sm">
                                    <i class="fa fa-pencil"></i>
                                </a>
                                <a href="proses.php?hapus=<?php echo $result['id']; ?>" type="button"
                                    class="btn btn-danger btn-sm"
                                    onclick="return confirm('Apakah anda yakin ingin menghapus data tersebut???')">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                        <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="mb-5"></div>

</body>

</html>