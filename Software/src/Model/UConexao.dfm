object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'OSAuthent=No'
      'Server=localhost\SQLEXPRESS'
      'Database=Desafio'
      'User_Name=sa'
      'Password=out102030'
      'DriverID=MSSQL')
    LoginPrompt = False
    BeforeConnect = ConexaoBeforeConnect
    Left = 168
    Top = 136
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 304
    Top = 224
  end
end
