/**
 * 
 */

#include "usuario.h"
#include "UsuarioDao.h"

/**
 * @author Luis Hernandez
 *
 */
@implementation usuario

@synthesize id;
@synthesize idComuna;
@synthesize nombre;
@synthesize correo;
@synthesize fechaNacimiento;
@synthesize hombre;
@synthesize telefono;
@synthesize fechaVencimientoLicencia;
@synthesize fechaModificacion;
@synthesize borrado;

/*
- (long)id {
    return _id;
}
- (void)setId:(long)newValue {
    _id = newValue;
}
*/

- (id)initWithDao:(UsuarioDao *)aUsuarioDao; {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        self.id = [aUsuarioDao[@"id_usuario"] longValue];
        self.idComuna = [aUsuarioDao[@"id_comuna"] longValue];
        self.nombre = aUsuarioDao[@"nombre"];
        self.correo = aUsuarioDao[@"correo"];
        self.fechaNacimiento = aUsuarioDao[@"fecha_nacimiento"];
        self.hombre = aUsuarioDao[@"hombre"];
        self.telefono = aUsuarioDao[@"telefono"];
        self.fechaVencimientoLicencia = aUsuarioDao[@"fecha_vencimiento_licencia"];
        self.fechaModificacion = aUsuarioDao[@"fecha_modificacion"];
        self.borrado = aUsuarioDao[@"borrado"];
    }
    return self;
}

- (void) dealloc
{
    //id = nil;
    idComuna = -1;
    [nombre dealloc];
    [correo dealloc];
    [fechaNacimiento dealloc];
    [hombre dealloc];
    [telefono dealloc];
    [fechaVencimientoLicencia dealloc];
    [fechaModificacion dealloc];
    [borrado dealloc];

    [super dealloc];
}


- (NSString *)description {
    return [NSString stringWithFormat: @"usuario: "
        "id=%@, "
        "idComuna=%@, "
        "nombre=%@, "
        "correo=%@, "
        "fechaNacimiento=%@, "
        "hombre=%@, "
        "telefono=%@, "
        "fechaVencimientoLicencia=%@, "
        "fechaModificacion=%@, "
        "borrado=%@", 
        [self id] != nil ? [NSString stringWithFormat: @"%ld", [self id]] : @"null", 
        [self idComuna] != nil ? [NSString stringWithFormat: @"%ld", [self idComuna]] : @"null", 
        [self nombre] != nil ? [NSString stringWithFormat: @"'%@'", [self nombre]] : @"null", 
        [self correo] != nil ? [NSString stringWithFormat: @"'%@'", [self correo]] : @"null",
        [self fechaNacimiento] != nil ? [NSString stringWithFormat: @"'%@'", [self fechaNacimiento]] : @"null", 
        [self hombre] != nil ? [NSString stringWithFormat: @"'%@'", [self hombre]] : @"null",
        [self telefono] != nil ? [NSString stringWithFormat: @"'%@'", [self telefono]] : @"null", 
        [self fechaVencimientoLicencia] != nil ? [NSString stringWithFormat: @"'%@'", [self fechaVencimientoLicencia]] : @"null", 
        [self fechaModificacion] != nil ? [NSString stringWithFormat: @"'%@'", [self fechaModificacion]] : @"null", 
        [self borrado] != nil ? [NSString stringWithFormat: @"'%@'", [self borrado]] : @"null"];
}

- (NSDictionary *)getContentAsDictionary {
    return @{
		@"id_usuario": [self id] != nil ? [NSString stringWithFormat: @"%ld", [self id]] : @"null",
		@"id_comuna":[self idComuna] != nil ? [NSString stringWithFormat: @"%ld", [self idComuna]] : @"null",
		@"nombre":[self nombre] != nil ? [self nombre] : @"null",
		@"correo":[self correo] != nil ? [self correo] : @"null",
		@"fecha_nacimiento":[self fechaNacimiento] != nil ? [self fechaNacimiento] : @"null",
		@"hombre":[self hombre] != nil ? [self hombre] : @"null",
		@"telefono":[self telefono] != nil ? [self telefono] : @"null",
		@"fecha_vencimiento_licencia":[self fechaVencimientoLicencia] != nil ? [self fechaVencimientoLicencia] : @"null",
		@"fecha_modificacion":[self fechaModificacion] != nil ? [self fechaModificacion] : @"null",
		@"borrado":[self borrado] != nil ? [self borrado] : @"null"
    };
}

@end
