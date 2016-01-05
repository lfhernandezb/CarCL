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
    @property (nonatomic) long id;
    @property (nonatomic) long idComuna;
    @property (nonatomic, copy) NSString * nombre;
    @property (nonatomic, copy) NSString * correo;
    @property (nonatomic, copy) NSString * fechaNacimiento;
    @property (nonatomic, copy) NSString * hombre;
    @property (nonatomic, copy) NSString * telefono;
    @property (nonatomic, copy) NSString * fechaVencimientoLicencia;
    @property (nonatomic, copy) NSString * fechaModificacion;
    @property (nonatomic, copy) NSString * borrado;
    
- (id)initWithDao:(UsuarioDao *)aUsuarioDao;

- (NSString *)description;

@end
