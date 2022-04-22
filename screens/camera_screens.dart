import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/screens/view_image_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

enum WidgetState { none, loading, loaded, error }

class _CameraScreenState extends State<CameraScreen> {
  WidgetState _widgetState = WidgetState.none;
  List<CameraDescription> _cameras = List<CameraDescription>.empty();
  late CameraController _cameraController;
  late XFile foto;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (_widgetState) {
      case WidgetState.none:
      case WidgetState.loading:
        return _buildScaffold(
          context,
          const Center(
            child: CircularProgressIndicator(),
          ),
        );
      case WidgetState.loaded:
        return _buildScaffold(
          context,
          CameraPreview(_cameraController),
        );
      case WidgetState.error:
        return _buildScaffold(
          context,
          const Center(
            child: Text(
                'La cámara no pudo ser inicializada. Reinicia la aplicación'),
          ),
        );
    }
  }

  Widget _buildScaffold(BuildContext context, Widget body) {
    return Scaffold(
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          foto = await _cameraController.takePicture();
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ViewImageScreen(imagePath: foto.path)),
          );
        },
        child: const Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future initializeCamera() async {
    _widgetState = WidgetState.loading;
    if (mounted) setState(() {});
    _cameras = await availableCameras();
    _cameraController = CameraController(_cameras[0], ResolutionPreset.max);
    await _cameraController.initialize();
    if (_cameraController.value.hasError) {
      _widgetState = WidgetState.error;
      if (mounted) setState(() {});
    } else {
      _widgetState = WidgetState.loaded;
      if (mounted) setState(() {});
    }
  }
}
