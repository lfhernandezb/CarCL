#import "UsuarioDao.h"
#import "FMDatabaseQueue.h"

@implementation UsuarioDao

+ (NSString*)getTableName{
    return @"usuario";
}

+ (NSString*)idColumn{
    return @"id_usuario";
}
/*
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
*/
- (NSString *)description {
    return [NSString stringWithFormat: @"UsuarioDao: "
        "id_usuario=%@, "
        "id_comuna=%@, "
        "nombre=%@, "
        "correo=%@, "
        "fecha_nacimiento=%@, "
        "hombre=%@, "
        "telefono=%@, "
        "fecha_vencimiento_licencia=%@, "
        "fecha_modificacion=%@, "
        "borrado=%@", 
        self[@"id_usuario"] != nil ? [NSString stringWithFormat: @"%@", self[@"id_usuario"]] : @"null", 
        self[@"id_comuna"] != nil ? [NSString stringWithFormat: @"%@", self[@"id_comuna"]] : @"null", 
        self[@"nombre"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"nombre"]] : @"null", 
        self[@"correo"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"correo"]] : @"null",
        self[@"fecha_nacimiento"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"fecha_nacimiento"]] : @"null", 
        self[@"hombre"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"hombre"]] : @"null",
        self[@"telefono"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"telefono"]] : @"null", 
        self[@"fecha_vencimiento_licencia"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"fecha_vencimiento_licencia"]] : @"null", 
        self[@"fecha_modificacion"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"fecha_modificacion"]] : @"null", 
        self[@"borrado"] != nil ? [NSString stringWithFormat: @"'%@'", self[@"borrado"]] : @"null"];
}


@end
