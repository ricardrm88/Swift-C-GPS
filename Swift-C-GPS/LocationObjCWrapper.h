#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationObjCWrapper: NSObject

- (void)coordinatesChanged:(double)latitude :(double)longitude;

@end

NS_ASSUME_NONNULL_END