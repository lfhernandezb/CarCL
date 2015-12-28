/**
 * 
 */

#import <Foundation/Foundation.h>

/**
 * @author Luis Hernandez
 *
 */

@class UsuarioDao; 

@interface usuario : NSObject {
	/*
    long _id;
    long idComuna;
    NSString * nombre;
    NSString * correo;
    NSString * fechaNacimiento;
    bool hombre;
    NSString * telefono;
    NSString * fechaVencimientoLicencia;
    NSString * fechaModificacion;
    bool borrado;
    */
}
    @property (nonatomic) long id;
    @property (nonatomic) long idComuna;
    @property (nonatomic, copy) NSString * nombre;
    @property (nonatomic, copy) NSString * correo;
    @property (nonatomic, copy) NSString * fechaNacimiento;
    @property (nonatomic) bool hombre;
    @property (nonatomic, copy) NSString * telefono;
    @property (nonatomic, copy) NSString * fechaVencimientoLicencia;
    @property (nonatomic, copy) NSString * fechaModificacion;
    @property (nonatomic) bool borrado;
    
- (id)initWithDao:(UsuarioDao *)aUsuarioDao;

- (NSString *)description;

@end
