import 'package:mysql1/mysql1.dart';

class DatabaseConnector {
  static final _settings = ConnectionSettings(
    host: 'your-database-host', 
    port: 3306,
    user: 'root',                
    password: 'iloveAvacado22',  
    db: 'Letlotlo_La_Temo',      
  );

  static Future<MySqlConnection> getConnection() async {
    return await MySqlConnection.connect(_settings);
  }
}