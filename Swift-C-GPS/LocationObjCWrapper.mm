#import "LocationObjCWrapper.h"
#include "LocationCpp.h"

@interface LocationObjCWrapper()
@property LocationCpp *locationCpp;
@end

@implementation LocationObjCWrapper : NSObject

- (void)coordinatesChanged:(double)latitude :(double)longitude
{
    if (self.locationCpp == nil) {
        self.locationCpp = new LocationCpp();
    }
    self.locationCpp->setCoordinates(latitude,longitude);
}
@end