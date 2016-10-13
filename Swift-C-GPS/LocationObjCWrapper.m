#import "LocationObjCWrapper.h"

@implementation LocationObjCWrapper : NSObject

- (void)coordinatesChanged:(double)latitude :(double)longitude
{
    NSLog(@"Position: %f, %f", latitude, longitude);
}
@end