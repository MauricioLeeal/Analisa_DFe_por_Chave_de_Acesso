program ConsultaDFe;

{$APPTYPE CONSOLE}



function GeraNomeEstado(Chave:string): string;
  var
  Codigo : string;
  
begin
   Codigo := Copy( Chave, 0, 2);
   Result := 'Estado Não Encontrado';
   if Codigo='11' then result := 'Rondônia';
   if Codigo='12' then result := 'Acre';
   if Codigo='13' then result := 'Amazonas';
   if Codigo='14' then result := 'Roraima';
   if Codigo='15' then result := 'Pará';
   if Codigo='16' then result := 'Amapá';
   if Codigo='17' then result := 'Tocantins';
   if Codigo='21' then result := 'Maranhão';
   if Codigo='22' then result := 'Piauí';
   if Codigo='23' then result := 'Ceará';
   if Codigo='24' then result := 'Rio Grande do Norte';
   if Codigo='25' then result := 'Paraíba';
   if Codigo='26' then result := 'Pernambuco';
   if Codigo='27' then result := 'Alagoas';
   if Codigo='28' then result := 'Sergipe';
   if Codigo='29' then result := 'Bahia';
   if Codigo='31' then result := 'Minas Gerais';
   if Codigo='32' then result := 'Espírito Santo';
   if Codigo='33' then result := 'Rio de Janeiro';
   if Codigo='35' then result := 'São Paulo';
   if Codigo='41' then result := 'Paraná';
   if Codigo='42' then result := 'Santa Catarina';
   if Codigo='43' then result := 'Rio Grande do Sul';
   if Codigo='50' then result := 'Mato Grosso do Sul';
   if Codigo='51' then result := 'Mato Grosso';
   if Codigo='52' then result := 'Goiás';
   if Codigo='53' then result := 'Distrito Federal';
end;

function GeraNomeModelo(Chave:string): string;
  var
  Codigo : string;
	
begin
   Codigo := Copy( Chave, 21, 2);
   Result:= 'Modelo Não Encontrado';
   if Codigo='55' then result :='NF-e';
   if Codigo='65' then result :='NFC-e';
end;

function GeraNomeTipo(Chave:string): string;
  var
  Codigo : string;
  
begin
  Codigo := Copy( Chave, 35, 1);
  Result := 'Tipo Não Encontrado';
  if Codigo='1' then result :='Normal';
  if Codigo='2' then result :='Contingência OFF';
  if Codigo='3' then result :='Contigência SCAN';
end;


var
  Chave : String;
  Estado: String;
  Modelo: String;
  Tipo  : String;
  CNPJ  : String;
  AnoMes: String;
  Serie : String;
  Numero: String;
  CodNfe: String;
  DigVer: String;
  
begin
  WriteLn('Informe a chave de acesso: ');
  ReadLn(Chave);
  Estado := GeraNomeEstado(Chave);
  Modelo := GeraNomeModelo(Chave);
  Tipo   := GeraNomeTipo(Chave);
  CNPJ   := Copy(Chave, 7, 14);
  AnoMes := Copy(Chave, 3, 4);
  Serie  := Copy(Chave, 23, 3);
  Numero := Copy(Chave, 26, 9);
  CodNfe := Copy(Chave, 36, 8);
  DigVer := Copy(Chave, 44, 1);
  WriteLn('Estado = ', Estado);
  WriteLn('Modelo = ', Modelo);
  WriteLn('Tipo   = ', Tipo);
  WriteLn('CNPJ   = ', CNPJ);
  WriteLn('Ano/Mes= ', AnoMes);
  WriteLn('Serie  = ', Serie);
  WriteLn('Numero = ', Numero);
  WriteLn('CodNfe = ', CodNfe);
  WriteLn('DigVer = ', DigVer);

end.