import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:jpl_screen_streamer/jpl_screen_streamer.dart';

/// Widget that can render a WebRTC stream provided by a remote device.
class RemoteScreenRenderer extends StatefulWidget {
  /// Constructs the renderer with the connected receiver.
  const RemoteScreenRenderer({
    super.key,
    required this.receiver,
  });

  final ScreenReceiver receiver;

  @override
  State createState() => _RemoteScreenRendererState();
}

class _RemoteScreenRendererState extends State<RemoteScreenRenderer> {
  @override
  void dispose() {
    widget.receiver.disconnect();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RTCVideoView(widget.receiver.remoteVideoRenderer);
  }
}
