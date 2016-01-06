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

}
    @property (nonatomic, copy) NSString * id;
    @property (nonatomic, copy) NSString * idComuna;
    @property (nonatomic, copy) NSString * nombre;
    @property (nonatomic, copy) NSString * correo;
    @property (nonatomic, copy) NSString * fechaNacimiento;
    @property (nonatomic, copy) NSString * hombre;
    @property (nonatomic, copy) NSString * telefono;
    @property (nonatomic, copy) NSString * fechaVencimientoLicencia;
    @property (nonatomic, copy) NSString * fechaModificacion;
    @property (nonatomic, copy) NSString * borrado;
    
- (id)initWithDao:(UsuarioDao *)usuarioDao;

- (NSString *)description;

@end
