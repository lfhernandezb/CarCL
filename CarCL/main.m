#import "usuario.h"
#import "vehiculo.h"
#import "CarData.h"
#import "XmlParser.h"
#import "BROrm/BRModel.h"
#import "UsuarioDao.h"

int main(void) {

    NSString *xmlString = @"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><CarData><usuarios><usuario><borrado>false</borrado><correo>srivasm1326@gmail.com</correo><fechaModificacion>2015-08-30 00:36:18</fechaModificacion><hombre>true</hombre><id>11</id><idComuna>1</idComuna><nombre>Sergio Rivas M</nombre></usuario></usuarios><vehiculos><vehiculo><aireAcondicionado>true</aireAcondicionado><alias>WA5839 </alias><alzaVidrios>true</alzaVidrios><anio>2006</anio><borrado>false</borrado><fechaModificacion>2015-08-27 13:44:54</fechaModificacion><fechaUltimaCalibracion>2015-06-08 00:00:00</fechaUltimaCalibracion><fechaUltimoKm>2015-06-08 00:00:00</fechaUltimoKm><idCombustible>1</idCombustible><idModelo>751117</idModelo><idTipoTransmision>1</idTipoTransmision><idTraccion>4</idTraccion><idUsuario>11</idUsuario><idVehiculo>1433779760534</idVehiculo><km>194000</km><kmAnuales>10000</kmAnuales><kmCalibrados>194000</kmCalibrados><patente>WA5936 </patente></vehiculo><vehiculo><aireAcondicionado>true</aireAcondicionado><alias>otro</alias><alzaVidrios>true</alzaVidrios><anio>2010</anio><borrado>true</borrado><fechaModificacion>2015-08-27 13:44:54</fechaModificacion><fechaUltimaCalibracion>2015-06-13 00:00:00</fechaUltimaCalibracion><fechaUltimoKm>2015-06-13 00:00:00</fechaUltimoKm><idCombustible>2</idCombustible><idModelo>520689</idModelo><idTipoTransmision>1</idTipoTransmision><idTraccion>1</idTraccion><idUsuario>11</idUsuario><idVehiculo>1434210359188</idVehiculo><km>60000</km><kmAnuales>10000</kmAnuales><kmCalibrados>60000</kmCalibrados><patente>PA3456</patente></vehiculo></vehiculos></CarData>";
	
    usuario *u;
    vehiculo *v;
    
    CarData *carData = [CarData fromXMLString:xmlString];
    
    u = [[carData usuarios] objectAtIndex:0];
    
    NSLog(@"u :: %@", u.description);

    v = [[carData vehiculos] objectAtIndex:0];
    
    NSLog(@"v :: %@", v.description);
    
    FMDatabaseQueue *fq = [FMDatabaseQueue databaseQueueWithPath:@"car.db3"];
    BROrmWrapper *w = [BROrmWrapper factoryForClassName:@"UsuarioDao" andDatabaseQueue:fq];
	UsuarioDao *ud = [w create:[u getContentAsDictionary]];
	
	NSLog(@"ud :: %@", u.description);
	
	BOOL success = [ud save];
	
	UsuarioDao *us = (UsuarioDao*)[w findOne:@(11)];
	
	NSLog(@"us :: %@", us.description);
	
	usuario *uu = [[[usuario alloc] initWithDao:us] autorelease];
	
	NSLog(@"uu :: %@", uu.description);
	
	XmlParser *parser = [[[XmlParser alloc] init] autorelease];
	
	NSString *uuString = [parser toXml:uu andTag:@"User" inNameSpace:@"http://bluepinme.com"];

    NSLog(@"userString :: %@", uuString);

}

