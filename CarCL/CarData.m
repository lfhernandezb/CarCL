#import "CarData.h"
#import "XmlParser.h"
 
@implementation CarData

@synthesize usuarios;
@synthesize vehiculos;
 
- (id)init {
 
    if ((self = [super init])) {
        self.usuarios = [[[NSMutableArray alloc] init] autorelease];
        self.vehiculos = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
 
}
 
- (void) dealloc {
    self.usuarios = nil;    
    self.vehiculos = nil;
    
    [super dealloc];
}

+ (CarData *) fromXMLString:(NSString *)xmlString {
	
	CarData *carData = [[[CarData alloc] init] autorelease];
	
    XmlParser *parser = [[[XmlParser alloc] init] autorelease];
        
	carData->usuarios = [parser fromXml:xmlString withObjectName:@"usuario"];
	carData->vehiculos = [parser fromXml:xmlString withObjectName:@"vehiculo"];
	
	return carData;
}
 
@end
