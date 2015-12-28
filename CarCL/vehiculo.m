/**
 * 
 */

#include "vehiculo.h"

/**
 * @author Luis Hernandez
 *
 */
@implementation vehiculo

@synthesize idVehiculo;
@synthesize idUsuario;
@synthesize idModelo;
@synthesize idTipoTransmision;
@synthesize idCombustible;
@synthesize idTraccion;
@synthesize alias;
@synthesize kmAnuales;
@synthesize fechaUltimoKm;
@synthesize kmCalibrados;
@synthesize fechaUltimaCalibracion;
@synthesize patente;
@synthesize anio;
@synthesize km;
@synthesize aireAcondicionado;
@synthesize alzaVidrios;
@synthesize fechaModificacion;
@synthesize borrado;

- (void) dealloc
{
    idVehiculo = nil;
    idUsuario = nil;
    idModelo = nil;
    idTipoTransmision = nil;
    idCombustible = nil;
    idTraccion = nil;
    [alias dealloc];
    kmAnuales = nil;
    [fechaUltimoKm dealloc];
    kmCalibrados = nil;
    [fechaUltimaCalibracion dealloc];
    [patente dealloc];
    anio = nil;
    km = nil;
    aireAcondicionado = nil;
    alzaVidrios = nil;
    [fechaModificacion dealloc];
    borrado = nil;

    [super dealloc];
}


- (NSString *)description {
    return [NSString stringWithFormat: @"vehiculo: idVehiculo=%ld, idUsuario=%ld, idModelo=%ld, idTipoTransmision=%c, idCombustible=%c, idTraccion=%c, alias='%@', kmAnuales=%d, fechaUltimoKm='%@', kmCalibrados=%d, fechaUltimaCalibracion='%@', patente='%@', anio=%d, km=%d, aireAcondicionado=%c, alzaVidrios=%c, fechaModificacion='%@', borrado=%c", idVehiculo, idUsuario, idModelo, idTipoTransmision, idCombustible, idTraccion, alias, kmAnuales, fechaUltimoKm, kmCalibrados, fechaUltimaCalibracion, patente, anio, km, aireAcondicionado, alzaVidrios, fechaModificacion, borrado];
}


@end