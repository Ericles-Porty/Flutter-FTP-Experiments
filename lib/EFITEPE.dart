import 'dart:io';

import 'package:ftpconnect/ftpconnect.dart';

class EFITEPE {
  late FTPConnect ftpConnect;

  void conectar() async {
    ftpConnect = FTPConnect(
      '192.168.2.1',
      user: '',
      pass: '',
      port: 21,
      securityType: SecurityType.FTP,
      //logger: Logger(isEnabled: true),
      showLog: true,
    );
    await ftpConnect.connect();
    //await ftpConnect.disconnect();
  }
  void desconnect() async {
    ftpConnect.disconnect();
  }
}
