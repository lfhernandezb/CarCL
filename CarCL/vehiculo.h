/**
 * 
 */

#import <Foundation/Foundation.h>

/**
 * @author Luis Hernandez
 *
 */
@interface vehiculo : NSObject {

    long idVehiculo;
    long idUsuario;
    long idModelo;
    int idTipoTransmision;
    int idCombustible;
    int idTraccion;
    NSString * alias;
    int kmAnuales;
    NSString * fechaUltimoKm;
    int kmCalibrados;
    NSString * fechaUltimaCalibracion;
    NSString * patente;
    int anio;
    int km;
    bool aireAcondicionado;
    bool alzaVidrios;
    NSString * fechaModificacion;
    bool borrado;
}
    @property (nonatomic) long idVehiculo;
    @property (nonatomic) long idUsuario;
    @property (nonatomic) long idModelo;
    @property (nonatomic) int idTipoTransmision;
    @property (nonatomic) int idCombustible;
    @property (nonatomic) int idTraccion;
    @property (nonatomic, copy) NSString * alias;
    @property (nonatomic) int kmAnuales;
    @property (nonatomic, copy) NSString * fechaUltimoKm;
    @property (nonatomic) int kmCalibrados;
    @property (nonatomic, copy) NSString * fechaUltimaCalibracion;
    @property (nonatomic, copy) NSString * patente;
    @property (nonatomic) int anio;
    @property (nonatomic) int km;
    @property (nonatomic) bool aireAcondicionado;
    @property (nonatomic) bool alzaVidrios;
    @property (nonatomic, copy) NSString * fechaModificacion;
    @property (nonatomic) bool borrado;

- (NSString *)description;

@end