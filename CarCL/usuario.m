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

- (id)initWithDao:(UsuarioDao *)usuarioDao; {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        self.id = usuarioDao[@"id_usuario"];
        self.idComuna = usuarioDao[@"id_comuna"];
        self.nombre = usuarioDao[@"nombre"];
        self.correo = usuarioDao[@"correo"];
        self.fechaNacimiento = usuarioDao[@"fecha_nacimiento"];
        self.hombre = usuarioDao[@"hombre"];
        self.telefono = usuarioDao[@"telefono"];
        self.fechaVencimientoLicencia = usuarioDao[@"fecha_vencimiento_licencia"];
        self.fechaModificacion = usuarioDao[@"fecha_modificacion"];
        self.borrado = usuarioDao[@"borrado"];
    }
    return self;
}

- (void) dealloc
{
    [self.id dealloc];
    [self.idComuna dealloc];
    [self.nombre dealloc];
    [self.correo dealloc];
    [self.fechaNacimiento dealloc];
    [self.hombre dealloc];
    [self.telefono dealloc];
    [self.fechaVencimientoLicencia dealloc];
    [self.fechaModificacion dealloc];
    [self.borrado dealloc];

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
        [self id] != nil ? [self id] : @"null", 
        [self idComuna] != nil ? [self idComuna] : @"null", 
        [self nombre] != nil ? [self nombre] : @"null", 
        [self correo] != nil ? [self correo] : @"null",
        [self fechaNacimiento] != nil ? [self fechaNacimiento] : @"null", 
        [self hombre] != nil ? [self hombre] : @"null",
        [self telefono] != nil ? [self telefono] : @"null", 
        [self fechaVencimientoLicencia] != nil ? [self fechaVencimientoLicencia] : @"null", 
        [self fechaModificacion] != nil ? [self fechaModificacion] : @"null", 
        [self borrado] != nil ? [self borrado] : @"null"
    ];
}

- (NSDictionary *)getContentAsDictionary {
    return @{
		@"id_usuario": [self id] != nil ? [self id] : @"null",
		@"id_comuna":[self idComuna] != nil ? [self idComuna] : @"null",
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
