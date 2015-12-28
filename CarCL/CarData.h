#import <Foundation/Foundation.h>
 
@interface CarData : NSObject {
    NSMutableArray *_usuarios;
    NSMutableArray *_vehiculos;
}
 
@property (nonatomic, retain) NSMutableArray *usuarios;
@property (nonatomic, retain) NSMutableArray *vehiculos;

+ (CarData *) fromXMLString:(NSString *)xmlString;
 
@end
