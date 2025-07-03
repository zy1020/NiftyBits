
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YolaExtainBits : NSObject
+ (instancetype)shared;
- (void)bitsYola:(UIWindow *)window viewController:(UIViewController *)viewController revenuecat:(NSString *)key value:(NSInteger)tag;
- (void)applicationWillEnterForeground:(BOOL)show;
@end




