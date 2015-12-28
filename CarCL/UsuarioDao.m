#import "UsuarioDao.h"
#import "FMDatabaseQueue.h"

@implementation UsuarioDao

+ (NSString*)getTableName{
    return @"usuario";
}

+ (NSString*)idColumn{
    return @"id_usuario";
}

- (NSString *)description {
    return [NSString stringWithFormat: @"UsuarioDao: "
        "id_usuario='%@', "
        "id_comuna='%@', "
        "nombre='%@', "
        "correo='%@', "
        "fecha_nacimiento='%@', "
        "hombre='%@', "
        "telefono='%@', "
        "fecha_vencimiento_licencia='%@', "
        "fecha_modificacion='%@', "
        "borrado='%@'", 
        self[@"id_usuario"],
        self[@"id_comuna"],
        self[@"nombre"], 
        self[@"correo"], 
        self[@"fecha_nacimiento"], 
        self[@"hombre"], 
        self[@"telefono"], 
        self[@"fecha_vencimiento_licencia"], 
        self[@"fecha_modificacion"], 
        self[@"borrado"]];
}


@end
