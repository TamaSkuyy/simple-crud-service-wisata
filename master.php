<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM tempat_wisata";
        $stmt = $pdo->query($sql);
        $tempat_wisata = $stmt->fetchAll();
        echo json_encode($tempat_wisata);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(
            isset($data->nama) && 
            isset($data->lokasi) && 
            isset($data->jenis) && 
            isset($data->harga_tiket) && 
            isset($data->review) 
        ) {
            $sql = "INSERT INTO tempat_wisata (nama, lokasi, jenis, harga_tiket, review) VALUES (?, ?, ?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute(
                [
                    $data->nama, 
                    $data->lokasi, 
                    $data->jenis,
                    $data->harga_tiket,
                    $data->review
                ]
            );
            echo json_encode(['message' => 'Data tempat wisata berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(
            isset($data->id) &&
            isset($data->nama) && 
            isset($data->lokasi) && 
            isset($data->jenis) && 
            isset($data->harga_tiket) && 
            isset($data->review) 
        ) {
            $sql = "UPDATE tempat_wisata SET nama=?, lokasi=?, jenis=?, harga_tiket=?, review=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute(
                [
                    $data->nama, 
                    $data->lokasi, 
                    $data->jenis,
                    $data->harga_tiket,
                    $data->review,
                    $data->id
                ]
            );
            echo json_encode(['message' => 'Data tempat wisata berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(
            isset($data->id)
        ) {
            $sql = "DELETE FROM tempat_wisata WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute(
                [
                    $data->id
                ]
            );
            echo json_encode(['message' => 'Data tempat wisata berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>