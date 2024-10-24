import 'package:camera/camera.dart'; // Mengimpor paket kamera
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart'; // Mengimpor paket animasi loading

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _cameraController; // Kontroler kamera
  List<CameraDescription>? cameras; // Daftar kamera yang tersedia

  @override
  void initState() {
    super.initState();
    _initializeCamera(); // Memanggil fungsi untuk inisialisasi kamera
  }

  Future<void> _initializeCamera() async {
    cameras = await availableCameras(); // Mendapatkan daftar kamera
    _cameraController = CameraController(cameras![0], ResolutionPreset.high); // Menggunakan kamera pertama
    await _cameraController?.initialize(); // Menginisialisasi kontroler kamera
    setState(() {}); // Memicu build() untuk memperbarui tampilan
  }

  @override
  Widget build(BuildContext context) {
    // Jika kamera belum diinisialisasi, tampilkan loading biru
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return Center(
        child: SpinKitCircle(color: Colors.blue, size: 50.0), // Animasi loading biru
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('Camera')), // Judul untuk halaman kamera
      body: CameraPreview(_cameraController!), // Menampilkan preview dari kamera
    );
  }

  @override
  void dispose() {
    _cameraController?.dispose(); // Membersihkan kontroler kamera
    super.dispose();
  }
}
