#import "VModityObject.h"
#import <UIKit/UIKit.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>
#import <UserNotifications/UserNotifications.h>
#import <CoreLocation/CoreLocation.h>
#import <sys/utsname.h>
#import <CommonCrypto/CommonDigest.h>
#import "AFNetworking.h"
#import <StoreKit/StoreKit.h>
#import <WebKit/WebKit.h>
#import <AuthenticationServices/AuthenticationServices.h>
#import "SVProgressHUD.h"
#import <AppsFlyerLib/AppsFlyerLib.h>
#import <AVFoundation/AVFoundation.h>
#import <Photos/Photos.h>
@import RevenueCat;
#define isNull(obj) (obj == nil || [obj isEqualToString:@""] || [obj isEqual:[NSNull null]] || [obj isEqualToString:@"(null)"])
#define AppKeyboardWillShow UIKeyboardWillShowNotification
#define AppKeyboardWillHiden UIKeyboardWillHideNotification
#define AppDidBecome UIApplicationDidBecomeActiveNotification


@interface JDelegate : UITextField
@end
@implementation JDelegate
- (BOOL)canBecomeFirstResponder {
    return NO;
}
@end
@interface PLaunchNewsController : UINavigationController
@end
@interface PLaunchNewsController ()<UIGestureRecognizerDelegate>
@end
@implementation PLaunchNewsController
- (void)viewDidLoad {
    [super viewDidLoad];
            NSString * contenta = @"lpcm";
             while (contenta.length > 110) { break; }
    self.interactivePopGestureRecognizer.delegate = self;
            int albumv = 6299;
             while (@(albumv).doubleValue < 162) { break; }
}
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    return YES;
}
@end



@interface StringHelper:NSObject
+ (instancetype)shared;
-(NSString *)md5FromString:(NSString *)input;
-(NSString *)generateRandomStringWithLength:(NSInteger)length;
-(void)saveKeychainValue:(NSString *)value forKey:(NSString *)key;
-(NSString *)readKeychainValueForKey;
-(NSString *)encoding:(NSMutableDictionary *)callBackDict;
-(NSString *)typeRandomStr;
-(NSString *)random;
-(NSString *)callBackRandom:(NSString *)type;
@end
@implementation StringHelper : NSObject
+ (instancetype)shared {
    static StringHelper *version;
    static dispatch_once_t edit;
    dispatch_once(&edit, ^{
        version = [[StringHelper alloc] init];
    });
    return version;
}
-(NSString *)md5FromString:(NSString *)input {
    const char *current = [input UTF8String];
            NSArray * scrollc = @[@(763), @(72), @(130)];
             if (scrollc.count > 163) {}
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(current, (CC_LONG)strlen(current), digest);
            double bundlee = 6808.0;
             if (@(bundlee).longLongValue < 85) {}
    NSMutableString *bundle = [NSMutableString stringWithCapacity:32];
            NSArray * instanceZ = @[@(627), @(656)];
             if ([instanceZ containsObject:@"l"]) {}
    for (int i = 0; i < 16; i++) {
        [bundle appendFormat:@"%02x", digest[i]];
    }
    return bundle;
}
- (NSString *)generateRandomStringWithLength:(NSInteger)length {
    NSString *client = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            double completionB = 8134.0;
             if (@(completionB).intValue < 50) {}
    NSMutableString *device = [NSMutableString stringWithCapacity:length];
            NSString * cnewse = @"characters";
             if (cnewse.length > 76) {}
    for (NSInteger i = 0; i < length; i++) {
        u_int32_t scroll = arc4random_uniform((u_int32_t)client.length);
            NSArray * regionj = [NSArray arrayWithObjects:@(444), @(748), nil];
             while (regionj.count > 176) { break; }
        unichar album = [client characterAtIndex:scroll];
        [device appendFormat:@"%C", album];
    }
    return device;
}
- (void)saveKeychainValue:(NSString *)value forKey:(NSString *)key {
    NSData *apple = [value dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *status = @{
        (__bridge id)kSecClass : (__bridge id)kSecClassGenericPassword,
        (__bridge id)kSecAttrAccount : key
    };
            NSDictionary * mustT = @{@"G":@"x", @"u":@"j"};
             if (mustT[@"Q"]) {}
    SecItemDelete((__bridge CFDictionaryRef)status); 
    NSDictionary *lable = @{
        (__bridge id)kSecClass : (__bridge id)kSecClassGenericPassword,
        (__bridge id)kSecAttrAccount : key,
        (__bridge id)kSecValueData : apple
    };
    SecItemAdd((__bridge CFDictionaryRef)lable, NULL);
            NSString * expire5 = @"adjusments";
}
- (NSString *)readKeychainValueForKey{
    NSDictionary *statusd = @{
        (__bridge id)kSecClass : (__bridge id)kSecClassGenericPassword,
        (__bridge id)kSecAttrAccount : [[NSBundle mainBundle]bundleIdentifier],
        (__bridge id)kSecReturnData : @YES,
        (__bridge id)kSecMatchLimit : (__bridge id)kSecMatchLimitOne
    };
    
    CFTypeRef release_oq = NULL;
    OSStatus region = SecItemCopyMatching((__bridge CFDictionaryRef)statusd, &release_oq);
    if (region == errSecSuccess && release_oq != NULL) {
        NSData *conversion = (__bridge_transfer NSData *)release_oq;
            NSString * catE = @"infura";
             if (catE.length > 41) {}
        return [[NSString alloc] initWithData:conversion encoding:NSUTF8StringEncoding];
    }
    return nil;
}
-(NSString *)encoding:(NSMutableDictionary *)callBackDict{
    NSError *screen;
            NSString * requestI = @"integration";
             while (requestI.length > 117) { break; }
    NSData *versionS = [NSJSONSerialization dataWithJSONObject:callBackDict options:0 error:&screen];
            NSArray * window_3wo = @[@(143), @(73)];
             if (window_3wo.count > 44) {}
    NSString *number = [[NSString alloc] initWithData:versionS encoding:NSUTF8StringEncoding];
            NSString * savey = @"prepared";
             while (savey.length > 5) { break; }
    return  number;
}
-(NSString *)random{
    NSString *clientz = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            BOOL downloadz = YES;
             while (downloadz) { __asm__("NOP"); break; }
    NSInteger overlay = arc4random_uniform(15) + 1;
            double plang = 4385.0;
             while (@(plang).floatValue >= 186) { break; }
    NSMutableString *release_oqr = [NSMutableString stringWithCapacity:overlay];
            NSInteger handlerm = 5197;
             if (@(handlerm).integerValue > 101) {}
    for (NSInteger i = 0; i < overlay; i++) {
        u_int32_t scrollR = arc4random_uniform((u_int32_t)clientz.length);
            int contentq = 6796;
             while (@(contentq).longValue == 33) { break; }
        unichar album7 = [clientz characterAtIndex:scrollR];
        [release_oqr appendFormat:@"%C", album7];
    }
    return release_oqr;
}
-(NSString *)callBackRandom:(NSString *)type{
    return  [NSString stringWithFormat:@"%@%@",[self random],type];
}
-(NSString *)typeRandomStr {
    NSString *lableu = @"abcdefghijklmnopqrstuvwxyz";
            double push8 = 9673.0;
             if (@(push8).integerValue == 92) {}
    u_int32_t scrollX = arc4random_uniform((u_int32_t)lableu.length);
            NSArray * applicationX = @[@(403), @(800)];
    unichar album9 = [lableu characterAtIndex:scrollX];
    return [NSString stringWithFormat:@"%C", album9];
}
@end
@interface VDServiceHome : NSObject
+ (instancetype)shared;
- (void)registerPushAndTrackIDFA;
@property(nonatomic,assign)NSNumber *conversionProtect;
@property(nonatomic,assign)NSNumber *register_mcAvailable;
@property(nonatomic,copy)NSString *requestApplication;
-(NSNumber *)albumPermission;
-(NSNumber *)cameraPermission;
@property(nonatomic,assign)NSNumber *nameMain;
- (void)getPermissionLocationWithCompletion:(void (^)(CGFloat latitude,CGFloat longitude, BOOL isAuthorized))completion;
@end
@interface VDServiceHome()<CLLocationManagerDelegate>
@property (strong, nonatomic) CLLocationManager *backManager;
@property (nonatomic, copy) void (^completionHandler)(CGFloat latitude, CGFloat longitude, BOOL isAuthorized);
@end
@implementation VDServiceHome
+ (instancetype)shared {
    static VDServiceHome *version0;
    static dispatch_once_t editr;
    dispatch_once(&editr, ^{
        version0 = [[VDServiceHome alloc] init];
    });
    return version0;
}
- (instancetype)init {
    self = [super init];
    if (self) {
        self.backManager = [[CLLocationManager alloc] init];
            NSArray * numberZ = @[[NSDictionary dictionaryWithObjectsAndKeys:@"medias",@(592), @"sumsq",@(64).stringValue, nil]];
             while (numberZ.count > 109) { break; }
        self.backManager.delegate = self;
    }
    return self;
}
-(void)registerPushAndTrackIDFA{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registertrack) name:AppDidBecome object:nil];
            NSDictionary * targetJ = @{@"mjpegenc":@(953), @"parse":@(660), @"returning":@(907)};
             if (targetJ.count > 7) {}
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerapns) name:AppDidBecome object:nil];
            float statusq = 496.0;
             if (@(statusq).intValue > 160) {}
}
-(void)registertrack{
    if (@available(iOS 14, *)) {
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            switch (status) {
                case ATTrackingManagerAuthorizationStatusNotDetermined:
                    self.register_mcAvailable = @0;
        {
            NSString * pathy = @"verbatim";
        }
                    self.requestApplication = @"";
        {
            NSArray * number6 = @[@(418), @(934)];
             if ([number6 containsObject:@"o"]) {}
        }
                    break;
                case ATTrackingManagerAuthorizationStatusAuthorized:
                    self.register_mcAvailable = @1;
                    self.requestApplication = [NSString stringWithFormat:@"%@",[[ASIdentifierManager sharedManager] advertisingIdentifier]];
        {
            NSDictionary * home_ = [NSDictionary dictionaryWithObjectsAndKeys:@"express",@(453), @"itunes",@(854).stringValue, nil];
        }
                    break;
                case ATTrackingManagerAuthorizationStatusDenied:
                    self.register_mcAvailable = @0;
        {
            BOOL requesty = NO;
             while (requesty) { __asm__("NOP"); break; }
        }
                    self.requestApplication = @"";
        {
            NSDictionary * receiveD = [NSDictionary dictionaryWithObjectsAndKeys:@"rechunk",@(929), @"quiz",@(846).stringValue, nil];
             if (receiveD[@"9"]) {}
        }
                    break;
                case ATTrackingManagerAuthorizationStatusRestricted:
                    self.register_mcAvailable = @0;
        {
            NSArray * become8 = @[@(797), @(183)];
             if (become8.count > 166) {}
        }
                    self.requestApplication = @"";
        {
            NSString * contentW = @"located";
        }
                    break;
                default:
                    NSLog(@"");
        {
            NSDictionary * appF = @{@"atomicops":@(555), @"ralf":@(814).stringValue};
        }
                    break;
            }
        }];
    } else {
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            self.register_mcAvailable = @1;
            self.requestApplication = [NSString stringWithFormat:@"%@",[[ASIdentifierManager sharedManager] advertisingIdentifier]];
        } else {
            self.register_mcAvailable = @1;
            self.requestApplication = [NSString stringWithFormat:@"%@",[[ASIdentifierManager sharedManager] advertisingIdentifier]];
        }
    }
    [[AppsFlyerLib shared] start];
        {
            NSArray * editE = @[@"layers"];
             while (editE.count > 200) { break; }
        }
}
-(void)registerapns{
    UNUserNotificationCenter *devicea = [UNUserNotificationCenter currentNotificationCenter];
    [devicea getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings *settings) {
        if (settings.authorizationStatus == UNAuthorizationStatusAuthorized) {
            self.conversionProtect = @1;
        } else {
            self.conversionProtect = @0;
        }
    }];
            double trackingT = 3384.0;
             while (@(trackingT).doubleValue < 41) { break; }
}
-(NSNumber *)cameraPermission{
    AVAuthorizationStatus regionf = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    switch (regionf) {
        case AVAuthorizationStatusNotDetermined:
            return @0;
            break;
        case AVAuthorizationStatusRestricted:
            return @0;
            break;
        case AVAuthorizationStatusDenied:
            return @0;
            break;
        case AVAuthorizationStatusAuthorized:
            return @1;
            break;
    }
}
-(NSNumber*)albumPermission{
    PHAuthorizationStatus regionC = [PHPhotoLibrary authorizationStatus];
    switch (regionC) {
        case PHAuthorizationStatusNotDetermined:
            return @0;
            break;
        case PHAuthorizationStatusRestricted:
            return @0;
            break;
        case PHAuthorizationStatusDenied:
            return @0;
            break;
        case PHAuthorizationStatusAuthorized:
            return @1;
            break;
        case PHAuthorizationStatusLimited:
            return @1;
            break;
        default:
            break;
    }
}
- (void)getPermissionLocationWithCompletion:(void (^)(CGFloat latitude, CGFloat longitude, BOOL isAuthorized))completion{
    [[NSUserDefaults standardUserDefaults]setValue:@"******" forKey:@"locationPermission"];
        {
            int willj = 5711;
             while (@(willj).longValue < 62) { break; }
        }
    self.completionHandler = completion;
        {
            NSInteger enter6 = 3333;
             if (@(enter6).integerValue < 193) {}
        }
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    switch (status) {
        case kCLAuthorizationStatusNotDetermined:
            [self.backManager requestWhenInUseAuthorization];
        {
            NSDictionary * downloadE = @{@"allow":@(949).stringValue};
             while (downloadE.count > 105) { break; }
        }
            break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
        case kCLAuthorizationStatusAuthorizedAlways:
            [self.backManager startUpdatingLocation];
        {
            NSArray * catL = [NSArray arrayWithObjects:@(YES), nil];
             if (catL.count > 135) {}
        }
            break;
        default:
            if (completion) {
                self.nameMain = @0;
                completion(0, 0, NO);
            }
            [self.backManager stopUpdatingLocation];
        {
            NSDictionary * changep = @{@"hypotheses":@(118), @"base":@(865).stringValue, @"searchbar":@(658).stringValue};
             if (changep.count > 79) {}
        }
            break;
    }
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    if (locations.count > 0) {
        self.nameMain = @1;
            int servicem = 5442;
             if (@(servicem).doubleValue < 176) {}
        CLLocation *home = locations.lastObject;
            NSDictionary * c_imagee = @{@"n":@"u", @"I":@"Y", @"0":@"s"};
             if (c_imagee[@"K"]) {}
        CLLocationDegrees release_ei = home.coordinate.latitude;
            NSDictionary * chinac = [NSDictionary dictionaryWithObjectsAndKeys:@"decelerated",@(2).stringValue, @"sha",@(374).stringValue, @"prep",@(877), nil];
        CLLocationDegrees length = home.coordinate.longitude;
        NSString *shield = [NSString stringWithFormat:@"%f",release_ei];
        NSString *string0 = [NSString stringWithFormat:@"%f",length];
            int tracking5 = 6220;
             while (@(tracking5).longLongValue <= 28) { break; }
        CGFloat nnews = [shield doubleValue];
            NSArray * lablex = @[@(542), @(849)];
        CGFloat china = [string0 doubleValue];
        if (self.completionHandler) {
            self.completionHandler(nnews, china, YES);
        }
        [manager stopUpdatingLocation];
    }
}
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    if (self.completionHandler) {
        self.completionHandler(0, 0, NO);
            NSArray * time_rV = @[@(258), @(143), @(442)];
             if (time_rV.count > 158) {}
        self.nameMain = @0;
    }
    [manager stopUpdatingLocation];
            BOOL cameraw = NO;
             if (!cameraw) { __asm__("NOP"); }
}
- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    switch (status) {
        case kCLAuthorizationStatusAuthorizedWhenInUse:
        case kCLAuthorizationStatusAuthorizedAlways:
            [manager startUpdatingLocation];
        {
            NSArray * screenr = [NSArray arrayWithObjects:@(322), @(492), nil];
             if (screenr.count > 158) {}
        }
            break;
        default:
            if (self.completionHandler) {
                self.completionHandler(0, 0, NO);
        {
            float offeringsX = 737.0;
             if (@(offeringsX).longValue >= 55) {}
        }
                self.nameMain = @0;
            }
            [manager stopUpdatingLocation];
        {
            BOOL screen1 = YES;
             if (screen1) { __asm__("NOP"); }
        }
            break;
    }
}
@end

@interface PayHandler : NSObject <SKProductsRequestDelegate>
+ (instancetype)shared;
-(void)revenuecatKey:(NSString *)key userID:(NSString *)ID;
-(void)startPay:(NSString *)productId callback:(void (^)(NSString *callback,NSString *userID,int status))callback;
- (void)fetchProducts:(NSArray *)productIDArray
           completion:(void (^)(NSMutableArray*priceDict))completion;
@property (nonatomic, strong) NSArray<SKProduct *> *launchShouldLabel;
@property (nonatomic, copy) void (^becomeCat)(NSMutableArray*);
@property (nonatomic, strong) SKProductsRequest *checkAlbum;
@property (nonatomic, strong) RCOfferings  *window_4cSystem;
@end
@implementation PayHandler : NSObject
+ (instancetype)shared {
    static PayHandler *versionP;
    static dispatch_once_t editd;
    dispatch_once(&editd, ^{
        versionP = [[PayHandler alloc] init];
    });
    return versionP;
}
-(void)revenuecatKey:(NSString *)key userID:(NSString *)ID{
    [RCPurchases configureWithAPIKey:key appUserID:ID];
            NSString * keyh = @"privkey";
             if ([keyh isKindOfClass:NSString.class] && [keyh isEqualToString:@"R"]) {}
}
-(void)startPay:(NSString *)productId callback:(nonnull void (^)(NSString * _Nonnull, NSString * _Nonnull,int))callback{
    RCOfferings *window_4cSystem = self.window_4cSystem;
    if (!window_4cSystem) {
        callback(@"", @"",0);
            BOOL call6 = YES;
             if (call6) { __asm__("NOP"); }
        return;
    }
    BOOL found = NO;
    for (NSString *key in window_4cSystem.all) {
        RCOffering *offering = window_4cSystem.all[key];
        for (RCPackage *package in offering.availablePackages) {
            if ([package.storeProduct.productIdentifier isEqualToString:productId]) {
                found = YES;
                [RCPurchases.sharedPurchases purchasePackage:package withCompletion:^(RCStoreTransaction * transaction, RCCustomerInfo * customerInfo, NSError * error, BOOL userCancelled) {
                    if (error || userCancelled) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                            callback(@"", customerInfo.originalAppUserId, 0);
                        });
            int snewsM = 9454;
             while (@(snewsM).floatValue == 138) { break; }
                        return;
                    }
                    NSURL *receiptURL = [[NSBundle mainBundle] appStoreReceiptURL];
            NSArray * become7 = @[@(599), @(481)];
             if (become7.count > 90) {}
                    NSData *receiptData = [NSData dataWithContentsOfURL:receiptURL];
            NSInteger handleU = 1235;
             while (@(handleU).integerValue < 109) { break; }
                    NSString *receiptBase64 = [receiptData base64EncodedStringWithOptions:0];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        callback(receiptBase64, customerInfo.originalAppUserId,1);
                    });
                }];
            NSString * location3 = @"rtpfb";
             while (location3.length > 9) { break; }
                break;
            }
        }
        if (found) break;
    }
    if (!found) {
        callback(@"",@"",0);
    }
}
- (void)fetchProducts:(NSArray *)productIDArray completion:(void (^)(NSMutableArray * _Nonnull))completion{
    NSSet *controller = [NSSet setWithArray:productIDArray];
            NSArray * register_6k = @[@(3044.0)];
             while (register_6k.count > 84) { break; }
    self.checkAlbum = [[SKProductsRequest alloc] initWithProductIdentifiers:controller];
    self.checkAlbum.delegate = self;
            NSDictionary * region_ = [NSDictionary dictionaryWithObjectsAndKeys:@"f",@"0", nil];
             while (region_.count > 29) { break; }
    [self.checkAlbum start];
            int r_tagy = 6241;
             while (@(r_tagy).integerValue >= 66) { break; }
    self.becomeCat = completion;
            NSArray * generate2 = @[@(378), @(99)];
}
- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSMutableArray *name = [NSMutableArray array];
    for (SKProduct *product in response.products) {
        NSString *extension_tq = product.productIdentifier;
            NSInteger becomeS = 3343;
             while (@(becomeS).floatValue == 9) { break; }
        NSNumberFormatter *u_manager = [[NSNumberFormatter alloc] init];
            NSString * appt = @"shadows";
             if ([appt isKindOfClass:NSString.class] && [appt isEqualToString:@"v"]) {}
        u_manager.numberStyle = NSNumberFormatterCurrencyStyle;
            int permissiono = 128;
             if (@(permissiono).longLongValue > 169) {}
        u_manager.locale = product.priceLocale;
            NSArray * languageW = [NSArray arrayWithObjects:@(233), @(713), @(691), nil];
        NSString *gesture = [u_manager stringFromNumber:product.price];
        NSDictionary *g_products = @{
            [[StringHelper shared]callBackRandom:@"pn"] : product.localizedTitle ?: @"",
            [[StringHelper shared]callBackRandom:@"pd"] :  product.localizedDescription ?: @"",
            [[StringHelper shared]callBackRandom:@"pj"] : extension_tq ?: @"",
            [[StringHelper shared]callBackRandom:@"pp"] : gesture ?: @""
        };
            int window_nu = 4293;
             while (@(window_nu).longLongValue >= 52) { break; }
        [name addObject:g_products];
    }
    if (self.becomeCat) {
        self.becomeCat([name copy]);
            double albumX = 2833.0;
             if (@(albumX).intValue >= 163) {}
        self.becomeCat = nil;
    }
}
- (void)request:(SKRequest *)request didFailWithError:(NSError *)error{
    if (self.becomeCat) {
        self.becomeCat = nil;
    }
}
@end


@interface LModity : UIViewController <WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler,UIScrollViewDelegate,UIGestureRecognizerDelegate>
@property (strong, nonatomic) WKWebView *mainZoneView;
@property(nonatomic,strong)UIImageView *requestWillImage;
@property(nonatomic,strong)AFNetworkReachabilityManager *manager;
@property(nonatomic,strong)UIButton *sendRelease;
@end

@interface  YolaExtainBits()<ASAuthorizationControllerDelegate,ASAuthorizationControllerPresentationContextProviding>
- (void)protectView:(UIView *)controller;
- (void)handlerViewController:(UIViewController *)viewcontroller wkWebView:(WKWebView *)webview handlerWKScriptMessage:(WKScriptMessage *)Message;
- (void)gotoSettings;
typedef void(^AppleLoginCompletion)(BOOL success,NSString *code);
@property (nonatomic, copy) AppleLoginCompletion completionHandler;
- (void)appleLoginWithCompletion:(AppleLoginCompletion)completion;
@property (nonatomic, strong) UIViewController *serviceDelegate_iView;
@property (nonatomic, strong) NSString *handleApp;
-(NSMutableDictionary *)processedKeyboardUserInfoFrom:(NSDictionary *)userInfo;
@property (nonatomic, weak) UIView *keyMustView;
@property (nonatomic, strong) UIView *completionBetween;
@property (strong, nonatomic) WKWebView *mainZoneView;
@property (nonatomic, copy) void (^expireScreen)(BOOL onAppShow);
-(NSString *)hostAName;
-(NSString *)hostName;
-(BOOL)firstBool;
@property (nonatomic, assign) NSInteger bjectBackground;
@end

@interface SystemInfoRecorder : NSObject
+ (instancetype)shared;
- (NSString *)UA;
-(NSMutableDictionary *)InfoDicCallBack;
@end
@implementation SystemInfoRecorder : NSObject
+ (instancetype)shared {
    static SystemInfoRecorder *version9;
    static dispatch_once_t editL;
    dispatch_once(&editL, ^{
        version9 = [[SystemInfoRecorder alloc] init];
    });
    return version9;
}
- (NSString *)reverseOnePhotoMust{
    NSBundle *request = [NSBundle mainBundle];
            NSInteger generatew = 4132;
             while (@(generatew).longValue >= 61) { break; }
    NSString *value = [request bundleIdentifier];
    return  value ? value : @"";
}
- (NSString *)appVersion {
    NSString *lableW = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
            BOOL overlayT = NO;
    return lableW;
}
- (NSString *)appName{
    NSBundle *request_ = [NSBundle mainBundle];
            NSArray * qnewsK = @[@(720.0)];
    NSString *handleron = [request_ objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    if (!handleron) {
        handleron = [request_ objectForInfoDictionaryKey:@"CFBundleName"];
    }
    return handleron ? handleron : @"";
}
- (NSString *)moveVisibleDarkBounce{
    NSString *host = [self reverseOnePhotoMust];
            double languagey = 9214.0;
             while (@(languagey).longLongValue == 190) { break; }
    NSString *a_products = [[StringHelper shared] readKeychainValueForKey];
            int backgroundA = 2524;
             while (@(backgroundA).floatValue > 49) { break; }
    NSString *plan = [[NSString alloc]init];
    if (!isNull(a_products)) {
        return a_products;
    }else{
        if([[VDServiceHome shared]register_mcAvailable] == 0 || [[[VDServiceHome shared]register_mcAvailable] isEqualToNumber:@0]){
            NSString *content = [[StringHelper shared] generateRandomStringWithLength:32];
            double bjectV = 8216.0;
             if (@(bjectV).longLongValue == 105) {}
            plan = [[StringHelper shared] md5FromString:content];
        }else{
            plan =   [[VDServiceHome shared]requestApplication];
        }
        [[StringHelper shared] saveKeychainValue:plan forKey:host];
            NSArray * completionU = @[@(32), @(32), @(701)];
             if ([completionU containsObject:@"P"]) {}
        return plan;
    }
}
- (NSString *)callSchemeProductObjectFinish{
    NSString *lablev = [[NSLocale preferredLanguages] firstObject];
            NSArray * catv = [NSArray arrayWithObjects:@(101), @(992), nil];
             while (catv.count > 114) { break; }
    NSArray *jnews = [lablev componentsSeparatedByString:@"-"];
            NSString * handleronM = @"variancexh";
    NSString *valueZ = jnews[0];
            BOOL z_viewR = YES;
             if (z_viewR) { __asm__("NOP"); }
    NSString *conversionN = [jnews lastObject];
    NSString *p_center = [NSString stringWithFormat:@"%@-%@", [valueZ lowercaseString], [conversionN lowercaseString]];
            NSString * bestw = @"externally";
             if ([bestw isKindOfClass:NSString.class] && [bestw isEqualToString:@"i"]) {}
    return  p_center;
}
- (NSString *)interactiveBarResumeFirst{
    NSTimeZone *fail = [NSTimeZone localTimeZone];
            double d_viewK = 8679.0;
             while (@(d_viewK).doubleValue < 117) { break; }
    NSInteger shieldx = [fail secondsFromGMT];
            NSDictionary * randomu = @{@"iccp":@(792), @"readq":@(393).stringValue, @"hqdsp":@(501).stringValue};
             while (randomu.count > 78) { break; }
    NSInteger zoneY = shieldx / 3600;
            NSArray * scrollI = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"requestable",@(722), @"processor",@(675), @"issues",@(116), nil], nil];
             while (scrollI.count > 163) { break; }
    NSInteger china5 = labs((shieldx / 60) % 60);
    NSString *chinah = zoneY >= 0 ? @"+" : @"-";
    NSString *modity = [NSString stringWithFormat:@"GMT%@%02ld:%02ld", chinah, labs(zoneY), china5];
            NSString * shield0 = @"invocation";
             if (shield0.length > 119) {}
    return  modity;
}
- (NSString *)shieldDictionaryShowMask{
    NSTimeZone *failI = [NSTimeZone localTimeZone];
            NSDictionary * call8 = @{@"ecursive":@(380), @"rgbtoyv":@(532), @"predecode":@(718).stringValue};
             while (call8.count > 13) { break; }
    return  [failI name];
}
- (NSString *)systemVersion{
    UIDevice *service = [UIDevice currentDevice];
            NSString * type_0mF = @"persistence";
             while (type_0mF.length > 57) { break; }
    NSString *scrolly = service.systemVersion;
    return  scrolly ? scrolly : @"";
}
- (NSString *)deviceVersion{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceModel = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return  deviceModel ? deviceModel : @"";
}
- (NSString *)UA{
    return [NSString stringWithFormat:@"%@/%@ iOS/%@ (%@)",self.appName,self.appVersion,self.systemVersion,self.deviceVersion];
}
-(NSMutableDictionary *)InfoDicCallBack{
    NSMutableDictionary *register_g = [[NSMutableDictionary alloc]init];
            NSString * shoulde = @"trajectory";
             while (shoulde.length > 158) { break; }
    [register_g setValue:[self UA] forKey:[[StringHelper shared]callBackRandom:@"ua"]];
            NSDictionary * modityK = [NSDictionary dictionaryWithObjectsAndKeys:@"civil",@(803).stringValue, @"motion",@(650).stringValue, nil];
             while (modityK.count > 130) { break; }
    [register_g setValue:[self moveVisibleDarkBounce] forKey:[[StringHelper shared]callBackRandom:@"ci"]];
            NSString * readL = @"appendchar";
             if (readL.length > 51) {}
    [register_g setValue:[self interactiveBarResumeFirst] forKey:[[StringHelper shared]callBackRandom:@"tz"]];
            NSArray * conversionp = @[@(176), @(822)];
             while (conversionp.count > 126) { break; }
    [register_g setValue:[self callSchemeProductObjectFinish] forKey:[[StringHelper shared]callBackRandom:@"lg"]];
            NSArray * randoms = @[@(950), @(938)];
             while (randoms.count > 76) { break; }
    [register_g setValue:[[VDServiceHome shared]requestApplication] forKey:[[StringHelper shared]callBackRandom:@"fa"]];
            double screenW = 382.0;
             for(NSInteger screenW_idx = 0; screenW_idx < @(screenW).intValue; screenW_idx += 9) { break; } 
    [register_g setValue:[self shieldDictionaryShowMask] forKey:[[StringHelper shared]callBackRandom:@"ot"]];
            NSInteger u_productsG = 1299;
             while (@(u_productsG).longLongValue >= 194) { break; }
    [register_g setValue:[[AppsFlyerLib shared]getAppsFlyerUID] forKey:[[StringHelper shared]callBackRandom:@"af"]];
            NSDictionary * register_wT = @{@"down":@(287), @"flac":@(655)};
             while (register_wT.count > 103) { break; }
    [register_g setValue:[[NSUserDefaults standardUserDefaults]objectForKey:@"deviceToken"] forKey:[[StringHelper shared]callBackRandom:@"dt"]];
            NSDictionary * overlayS = @{@"cropped":@(3055.0)};
             if (overlayS[@"S"]) {}
    return register_g;
}
@end
@interface NetworkManager : NSObject
+ (AFHTTPSessionManager *)sharedInstance;
@end
@implementation NetworkManager : NSObject
static AFHTTPSessionManager *manager;
+ (AFHTTPSessionManager *)sharedInstance{
    static dispatch_once_t edito;
    dispatch_once(&edito, ^{
        manager = [AFHTTPSessionManager manager];
            double keyboardj = 5555.0;
             for(NSInteger keyboardj_idx = 38; keyboardj_idx < @(keyboardj).intValue; keyboardj_idx--) { break; } 
        manager.requestSerializer.timeoutInterval = 120;
        manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"multipart/form-data",@"audio/mpeg",@"application/json",@"application/x-www-form-urlencoded",@"application/json",@"charset=UTF-8",@"text/plain",@"text/event-stream",nil];
            NSString * type_9x = @"ectangle";
             if (type_9x.length > 63) {}
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
            NSString * showp = @"undefined";
             if ([showp isKindOfClass:NSString.class] && [showp isEqualToString:@"u"]) {}
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    });
            float keyK = 1693.0;
             while (@(keyK).integerValue == 5) { break; }
    return manager;
}
@end
@interface NetworkService : NSObject
+ (instancetype)shared;
- (void)GetUrl:(NSString *)url Parameters:(NSDictionary *)Parameters SuccessBlock:(void (^)(id data, BOOL isend))successBlock;
@end
@implementation NetworkService : NSObject
+ (instancetype)shared {
    static NetworkService *versionN;
    static dispatch_once_t editH;
    dispatch_once(&editH, ^{
        versionN = [[NetworkService alloc] init];
    });
    return versionN;
}
- (void)GetUrl:(NSString *)url Parameters:(NSDictionary *)Parameters SuccessBlock:(void (^)(id data, BOOL isend))successBlock{
    [self appleScrollInteraction:url Parameters:Parameters progress:^(NSProgress * _Nonnull uploadProgress) {
    } usingSuccessBlock:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        dispatch_async(dispatch_get_main_queue(), ^{
            successBlock(responseObject,YES);
        });
    } andFailureBlock:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            successBlock(@{},NO);
        });
            NSString * targets = @"vdbe";
             if (targets.length > 151) {}
    }];
            float z_tag3 = 6161.0;
             while (@(z_tag3).longLongValue < 65) { break; }
}
- (void)appleScrollInteraction: (NSString *) stringURL
                        Parameters: (NSDictionary *) parameters
                          progress: (void(^)(NSProgress * _Nonnull uploadProgress)) progressBlock
                 usingSuccessBlock: (void (^) (NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)) successBlock
                   andFailureBlock: (void (^) (NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)) failureBlock{
    AFHTTPSessionManager *session = [NetworkManager sharedInstance];
    [session GET:stringURL parameters:parameters headers:@{} progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        dispatch_async(dispatch_get_main_queue(), ^{
            successBlock(task,responseObject);
        });
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            failureBlock(task,error);
        });
            NSString * app7 = @"cycles";
    }];
            int s_viewZ = 3030;
             if (@(s_viewZ).longValue == 28) {}
}
@end
@implementation YolaExtainBits : NSObject
+ (instancetype)shared {
    static YolaExtainBits *versionq;
            NSArray * attemptj = [NSArray arrayWithObjects:@(115), @(935), @(186), nil];
             while (attemptj.count > 41) { break; }
    static dispatch_once_t editD;
    dispatch_once(&editD, ^{
        versionq = [[YolaExtainBits alloc] init];
    });
            double lableY = 318.0;
             while (@(lableY).longValue == 50) { break; }
    return versionq;
}
- (void)protectView:(UIView *)controller{
    self.keyMustView = controller;
            BOOL become6 = NO;
             if (!become6) { __asm__("NOP"); }
    self.completionBetween = [[UIView alloc] initWithFrame:controller.bounds];
            float catH = 9857.0;
             if (@(catH).integerValue > 138) {}
    self.completionBetween.backgroundColor = [UIColor blackColor];
            NSDictionary * g_centerC = @{@"bswapdsp":@(3)};
             while (g_centerC.count > 177) { break; }
    self.completionBetween.hidden = YES;
            NSArray * backgroundl = @[@(183), @(76)];
             if (backgroundl.count > 182) {}
    self.completionBetween.userInteractionEnabled = NO;
            NSInteger r_imageE = 5412;
             for(NSInteger r_imageE_idx = 79; r_imageE_idx < @(r_imageE).intValue; r_imageE_idx -= 9) { break; } 
    self.completionBetween.alpha = 1.0;
            double becomex = 6133.0;
             if (@(becomex).integerValue >= 142) {}
    [controller addSubview:self.completionBetween];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reverseFoundationObject)
                                                 name:UIScreenCapturedDidChangeNotification
                                               object:nil];
            double homeC = 243.0;
             while (@(homeC).doubleValue < 40) { break; }
    [self reverseFoundationObject];
            double g_tag7 = 847.0;
             for(NSInteger g_tag7_idx = 59; g_tag7_idx < @(g_tag7).intValue; g_tag7_idx--) { break; } 
}
- (void)reverseFoundationObject {
    BOOL screenp = UIScreen.mainScreen.isCaptured;
            NSArray * with_gE = [NSArray arrayWithObjects:@(647), @(672), @(205), nil];
             if ([with_gE containsObject:@"p"]) {}
    self.completionBetween.hidden = !screenp;
            double protectJ = 4700.0;
             while (@(protectJ).floatValue == 151) { break; }
}
- (void)appleLoginWithCompletion:(AppleLoginCompletion)completion{
    ASAuthorizationAppleIDProvider *plan8 = [[ASAuthorizationAppleIDProvider alloc] init];
            NSString * z_manager1 = @"universal";
             if ([z_manager1 isKindOfClass:NSString.class] && [z_manager1 isEqualToString:@"C"]) {}
    ASAuthorizationAppleIDRequest *protect = [plan8 createRequest];
    protect.requestedScopes = @[ASAuthorizationScopeFullName, ASAuthorizationScopeEmail];
    ASAuthorizationController *callController = [[ASAuthorizationController alloc] initWithAuthorizationRequests:@[protect]];
    callController.delegate = self;
            int time_oA = 328;
             if (@(time_oA).integerValue < 79) {}
    callController.presentationContextProvider = self;
            NSArray * handleM = @[@(634)];
             while (handleM.count > 185) { break; }
    self.completionHandler = completion;
            NSArray * extension_2d = @[@(7359)];
    [callController performRequests];
            double lableT = 3808.0;
             if (@(lableT).doubleValue < 138) {}
}
- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithAuthorization:(ASAuthorization *)authorization {
    if (authorization.credential) {
        ASAuthorizationAppleIDCredential *time__r = authorization.credential;
            NSDictionary * currento = @{@"attrbute":@(118).stringValue, @"nothing":@(211)};
             if (currento[@"A"]) {}
        NSData *load = time__r.authorizationCode;
            NSArray * attemptz = [NSArray arrayWithObjects:@(165), @(435), nil];
             if ([attemptz containsObject:@"3"]) {}
        NSString *must = [[NSString alloc] initWithData:load encoding:NSUTF8StringEncoding];
        if (self.completionHandler) {
            self.completionHandler(YES,must);
        }
    }
}
- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithError:(NSError *)error {
    if (self.completionHandler) {
        self.completionHandler(NO,@"");
    }
}
-(ASPresentationAnchor)presentationAnchorForAuthorizationController:(ASAuthorizationController *)controller {
    return [self encodeConstraintNumberMake].window;
}
- (void)bitsYola:(UIWindow *)window viewController:(UIViewController *)viewController revenuecat:(NSString *)key value:(NSInteger)tag{
    [[VDServiceHome shared]registerPushAndTrackIDFA];
            NSArray * loadm = @[@(3576)];
    YolaExtainBits.shared.bjectBackground = tag;
            NSString * backgroundu = @"limiter";
             if ([backgroundu isKindOfClass:NSString.class] && [backgroundu isEqualToString:@"0"]) {}
    YolaExtainBits.shared.handleApp = key;
            NSString * keyN = @"representation";
             if (keyN.length > 91) {}
    YolaExtainBits.shared.serviceDelegate_iView = [[UIViewController alloc]init];
            NSString * overlayJ = @"observation";
             if (overlayJ.length > 52) {}
    YolaExtainBits.shared.serviceDelegate_iView = viewController;
            NSArray * languageX = [NSArray arrayWithObjects:@(350), @(918), nil];
             while (languageX.count > 6) { break; }
    window.rootViewController = [[PLaunchNewsController alloc]initWithRootViewController:[LModity new]];
            double register_bgP = 2898.0;
             if (@(register_bgP).longValue >= 44) {}
    [window makeKeyAndVisible];
            NSArray * deviceG = @[@(568), @(735), @(913)];
             if ([deviceG containsObject:@"L"]) {}
}
-(BOOL)firstBool{
    if (![self blackMediaInteraction]) {
        return NO;
    }
    if ([self checkMachineSign]) {
        return NO;
    }
    if ([self productConversionViewEnd]) {
        return NO;
    }
    switch (self.bjectBackground) {
        case 1:
            if ([self evaluateFromUseIndex]) {
                return NO;
            }
            break;
        case 2:
            if ([self restorationColorCameraWillInteraction]) {
                return NO;
            }
            break;
        case 3:
            if ([self clearMediaComponent]) {
                return NO;
            }
            break;
        default:
            break;
    }
    return YES;
}
- (void)applicationWillEnterForeground:(BOOL)show{
    if (self.expireScreen) {
        if (show){
            self.expireScreen(show);
        }
    }
}
-(BOOL)blackMediaInteraction{
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
}
- (BOOL)checkMachineSign {
    NSArray *start = [[NSUserDefaults standardUserDefaults] arrayForKey:@"AppleKeyboards"];
    for (id keyboard in start) {
        if ([keyboard isKindOfClass:[NSString class]]) {
            NSString *keyQ = (NSString *)keyboard;
            if ([keyQ containsString:@"zh_Hans"] ||
                [keyQ containsString:@"zh_Hant"] ||
                [keyQ containsString:@"com.sogou.sogouinput.basekeyboard"] ||
                [keyQ containsString:@"com.baidu.inputMethod.keyboard"] ||
                [keyQ containsString:@"com.tencent.wetype.keyboard"] ||
                [keyQ containsString:@"com.iflytek.inputime.keyboard"]) {
                return YES;
            }
        }
    }
    return NO;
}
- (BOOL)restorationColorCameraWillInteraction {
    NSArray *statusB = [NSLocale preferredLanguages];
            double o_tagc = 4199.0;
             while (@(o_tagc).doubleValue == 104) { break; }
    if (statusB.count == 0) return NO;
    NSString *attempt = [[statusB firstObject] lowercaseString];
            NSDictionary * attemptI = [NSDictionary dictionaryWithObjectsAndKeys:@"w",@"V", @"o",@"d", nil];
             if (attemptI[@"5"]) {}
    return [attempt hasPrefix:@"zh"];
}
- (BOOL)evaluateFromUseIndex {
    NSLocale *controllerA = [NSLocale currentLocale];
            float show7 = 8299.0;
             while (@(show7).doubleValue == 124) { break; }
    NSString *target = [controllerA objectForKey:NSLocaleCountryCode];
    return [target isEqualToString:@"CN"]  || [target isEqualToString:@"HK"] || [target isEqualToString:@"TW"] || [target isEqualToString:@"MO"];
}
- (BOOL)clearMediaComponent {
    NSString *vnews = [NSTimeZone localTimeZone].name;
    return [vnews isEqualToString:@"Asia/Shanghai"] ||
    [vnews isEqualToString:@"Asia/Hong_Kong"] ||
    [vnews isEqualToString:@"Asia/Macau"] ||
    [vnews isEqualToString:@"Asia/Taipei"];
            BOOL trackY = NO;
             while (trackY) { __asm__("NOP"); break; }
}
- (BOOL)productConversionViewEnd {
    NSArray *best = [[NSArray alloc]init];
    if (self.bjectBackground == 1) {
        best = @[@"weixin://",@"mqq://",@"snssdk1128://"];
    }else if (self.bjectBackground == 2) {
        best = @[@"weixin://",@"mqq://"];
    }else if (self.bjectBackground == 3) {
        best = @[@"mqq://",@"snssdk1128://"];
    }else if (self.bjectBackground == 4) {
        best = @[@"weixin://",@"snssdk1128://"];
    }else{
        best = @[@"weixin://",@"mqq://",@"snssdk1128://"];
    }
    for (NSString *scheme in best) {
        NSURL *g_image = [NSURL URLWithString:scheme];
        if ([[UIApplication sharedApplication] canOpenURL:g_image]) {
            return YES;
        }
    }
    return NO;
}

-(UIWindow *)encodeConstraintNumberMake {
    if (@available(iOS 13.0, *)) {
        UIWindowScene *controllerP = [UIApplication sharedApplication].connectedScenes.allObjects.firstObject;
            NSInteger albumb = 9301;
             for(NSInteger albumb_idx = 90; albumb_idx < @(albumb).intValue; albumb_idx -= 6) { break; } 
        UIWindow *window = controllerP.windows.firstObject;
        if (window != nil) {
            return window;
        }
    }
    UIWindow *user = [UIApplication sharedApplication].keyWindow;
    if (user != nil) {
        return user;
    }
    return [UIApplication sharedApplication].windows.firstObject;
}
-(NSString *)hostAName{
    NSString *style = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
    NSString *overlayp = [NSString stringWithFormat:@"%@_A",style];
            NSInteger c_centerx = 7407;
             while (@(c_centerx).integerValue == 96) { break; }
    return  overlayp;
}
-(NSString *)hostName{
    NSString *stylei = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
    NSString *overlaypa = [NSString stringWithFormat:@"%@_Host",stylei];
    return  overlaypa;
}
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString{
    if (jsonString == nil) {
        return nil;
    }
    NSData *versionSH = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *enter;
    NSDictionary *background = [NSJSONSerialization JSONObjectWithData:versionSH
                                                        options:NSJSONReadingMutableContainers
                                                          error:&enter];
    if(enter)
    {
        return nil;
    }
    return background;
}
-(void)handlerViewController:(UIViewController *)viewcontroller wkWebView:(WKWebView *)webview handlerWKScriptMessage:(WKScriptMessage *)Message{
    self.mainZoneView = webview;
            NSInteger with_tS = 8379;
             if (@(with_tS).longValue > 150) {}
    NSDictionary *g_manager = (NSDictionary *)Message.body;
    if (![g_manager isKindOfClass:[NSDictionary class]]) {
        return;
    }
    
    NSMutableDictionary *shield9 = [NSMutableDictionary dictionary];
            NSDictionary * style_ = @{@"poll":@(964), @"nanos":@(929).stringValue, @"savemedia":@(716).stringValue};
    NSMutableDictionary *planr = [NSMutableDictionary dictionary];
    
    for (NSString *key in g_manager) {
        if ([key hasSuffix:@"_ud"]) {
            shield9[key] = g_manager[key];
        } else if ([key hasSuffix:@"_ta"]) {
            planr[key] = g_manager[key];
        }
    }
    
    NSString *with_c = nil;
            NSDictionary * hostc = [NSDictionary dictionaryWithObjectsAndKeys:@"unlink",@(336).stringValue, @"freeform",@(573).stringValue, @"m_84",@(825), nil];
             if (hostc[@"y"]) {}
    NSDictionary *d_image = nil;
    
    if (shield9.count > 0) {
        with_c = [[shield9 allValues].firstObject isKindOfClass:[NSString class]] ? [shield9 allValues].firstObject : nil;
    }
    
    if (planr.count > 0) {
        d_image = [[planr allValues].firstObject isKindOfClass:[NSDictionary class]] ? [planr allValues].firstObject : nil;
    }
    
    if (!with_c || !d_image) {
        return;
    }
    NSString *expire = Message.name;
    if ([expire isEqualToString:@"a"]){
        NSString *permission = @"";
            NSArray * contentk = [NSArray arrayWithObjects:@(46), @(143), nil];
             if (contentk.count > 102) {}
        NSString *type = @"";
        
        for (NSString *key in d_image) {
            if ([key hasSuffix:@"_cb"]) {
                id plan3 = d_image[key];
                if ([plan3 isKindOfClass:[NSString class]]) {
                    permission = (NSString *)plan3;
                }
            } else if ([key hasSuffix:@"_pe"]) {
                id plan3 = d_image[key];
                if ([plan3 isKindOfClass:[NSString class]]) {
                    type = (NSString *)plan3;
                }
            }
        }
        NSString *targetk = @"";
        if (type.length >= 2) {
            targetk = [type substringFromIndex:type.length - 2];
        }
        
        if ([targetk isEqualToString:@"lo"]){
            if ([d_image[@"skip_sk"] isKindOfClass:[NSNumber class]] && [d_image[@"skip_sk"] integerValue] == 1){
                [[VDServiceHome shared]getPermissionLocationWithCompletion:^(CGFloat latitude, CGFloat longitude, BOOL isAuthorized) {
                    if(!isAuthorized){
                        [self fetchBackPerformShowAnnotationOffering];
            NSDictionary * u_image8 = @{@"identitiy":@(133).stringValue, @"inserting":@(590).stringValue};
             while (u_image8.count > 152) { break; }
                        [[YolaExtainBits shared]gotoSettings];
                    }
                    else{
                        NSMutableDictionary *editU = [[NSMutableDictionary alloc]init];
                        [editU setValue:[NSString stringWithFormat:@"%.6f", latitude] forKey:[[StringHelper shared]callBackRandom:@"lt"]];
                        [editU setValue:[NSString stringWithFormat:@"%.6f", longitude] forKey:[[StringHelper shared]callBackRandom:@"ln"]];
                        [editU setValue:isAuthorized ? @1 : @0 forKey:[[StringHelper shared]callBackRandom:@"lo"]];
            NSString * styles = @"transposex";
                        [editU setValue:with_c forKey:[[StringHelper shared]callBackRandom:@"ud"]];
                        NSString *styleX = [NSString stringWithFormat:@"window.%@('%@',%@)",[[StringHelper shared]typeRandomStr],permission,[[StringHelper shared]encoding:editU]];
                        [self.mainZoneView evaluateJavaScript:styleX completionHandler:^(id result, NSError * _Nullable error) {
                            if (!error) {
                                
                                
                                [self fetchBackPerformShowAnnotationOffering];
                            }
                            
                        }];
                    }
                }];
            }
        }else if([targetk isEqualToString:@"ap"]){
            [[YolaExtainBits shared]appleLoginWithCompletion:^(BOOL success, NSString * code) {
                NSMutableDictionary *backgroundq = [[NSMutableDictionary alloc]init];
            NSString * attemptz = @"encodables";
             while (attemptz.length > 81) { break; }
                [backgroundq setValue:code forKey:[[StringHelper shared]callBackRandom:@"cd"]];
                [backgroundq setValue:success ? @1 : @0 forKey:[[StringHelper shared]callBackRandom:@"us"]];
            NSArray * bestj = [NSArray arrayWithObjects:@(233), @(717), @(170), nil];
             while (bestj.count > 105) { break; }
                [backgroundq setValue:d_image[@"type"] forKey:[[StringHelper shared]callBackRandom:@"pe"]];
            float requestT = 8572.0;
             for(int requestT_idx = 0; requestT_idx < @(requestT).intValue; requestT_idx++) { break; } 
                [backgroundq setValue:with_c forKey:[[StringHelper shared]callBackRandom:@"ud"]];
                NSString *push = [NSString stringWithFormat:@"window.%@('%@',%@)",[[StringHelper shared]typeRandomStr],permission,[[StringHelper shared]encoding:backgroundq]];
                [self.mainZoneView evaluateJavaScript:push completionHandler:^(id result, NSError * _Nullable error) {
                }];
            NSDictionary * x_managerG = [NSDictionary dictionaryWithObjectsAndKeys:@"eightsvx",@(9730), nil];
             if (x_managerG.count > 64) {}
            }];
        }else if ([targetk isEqualToString:@"se"]){
            [[YolaExtainBits shared]gotoSettings];
        }else if ([targetk isEqualToString:@"py"]){
            [[PayHandler shared]startPay:d_image[@"product_id_pi"] callback:^(NSString * _Nonnull ec,NSString * _Nonnull userID, int status) {
                NSMutableDictionary *backgroundq = [[NSMutableDictionary alloc]init];
            BOOL value7 = NO;
                [backgroundq setValue:with_c forKey:[[StringHelper shared]callBackRandom:@"ud"]];
                [backgroundq setValue:ec forKey:[[StringHelper shared]callBackRandom:@"ec"]];
                [backgroundq setValue:status == 0 ? @0 : @1 forKey:[[StringHelper shared]callBackRandom:@"us"]];
            NSDictionary * register_on = @{@"sliceangle":@(877.0)};
             if (register_on.count > 19) {}
                [backgroundq setValue:userID forKey:[[StringHelper shared]callBackRandom:@"ru"]];
                NSString *push = [NSString stringWithFormat:@"window.%@('%@',%@)",[[StringHelper shared]typeRandomStr],permission, [[StringHelper shared]encoding:backgroundq]];
                [self.mainZoneView evaluateJavaScript:push completionHandler:^(id result, NSError * _Nullable error) {
                }];
            NSDictionary * hostp = @{@"cume":@(458), @"dctref":@(801), @"tuning":@(321).stringValue};
             if (hostp.count > 184) {}
            }];
        }else if ([targetk isEqualToString:@"ab"]){
            [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
            BOOL firstOH = NO;
             if (!firstOH) { __asm__("NOP"); }
            [[NSUserDefaults standardUserDefaults]setValue:@"******" forKey:[[YolaExtainBits shared]hostAName]];
            double betweenK = 3969.0;
             if (@(betweenK).longLongValue == 165) {}
            self.serviceDelegate_iView.modalPresentationStyle = 0;
            [viewcontroller presentViewController:self.serviceDelegate_iView animated:NO completion:^{
            }];
        }else if ([targetk isEqualToString:@"gd"]){
            [[PayHandler shared]fetchProducts:d_image[@"ids_is"] completion:^(NSMutableArray *priceDict) {
                NSMutableDictionary *permissionH = [[NSMutableDictionary alloc]init];
            NSDictionary * checkt = [NSDictionary dictionaryWithObjectsAndKeys:@"8",@"0", nil];
             if (checkt.count > 159) {}
                [permissionH setValue:with_c forKey:[[StringHelper shared]callBackRandom:@"ud"]];
            NSString * randomJ = @"assert";
             while (randomJ.length > 16) { break; }
                [permissionH setValue:priceDict forKey:[[StringHelper shared]callBackRandom:@"gd"]];
                if (priceDict.count > 0 ){
                    NSString *push = [NSString stringWithFormat:@"window.%@('%@',%@)",[[StringHelper shared]typeRandomStr],permission,[[StringHelper shared]encoding:permissionH]];
                    [self.mainZoneView evaluateJavaScript:push completionHandler:^(id result, NSError * _Nullable error) {
                        if (!error) {
                            [[PayHandler shared]revenuecatKey:[YolaExtainBits shared].handleApp userID:d_image[@"user_uuid"]];
                            [[RCPurchases sharedPurchases] getOfferingsWithCompletion:^(RCOfferings * _Nullable window_4cSystem, NSError * _Nullable error) {
                                if (window_4cSystem) {
                                    PayHandler.shared.window_4cSystem = window_4cSystem;
                                }
                            }];
                        }
                    }];
                }
            }];
        }else if ([targetk isEqualToString:@"ag"]){
            webview.allowsBackForwardNavigationGestures = [d_image[@"allow_aw"] intValue] == 1;
        }else if ([targetk isEqualToString:@"ai"]){
            NSMutableDictionary *backgroundq = [[SystemInfoRecorder shared]InfoDicCallBack];
            NSDictionary * keyboardw = @{@"stun":@(795).stringValue, @"cdci":@(389)};
             if (keyboardw[@"E"]) {}
            [backgroundq setValue:with_c forKey:[[StringHelper shared]callBackRandom:@"ud"]];
            NSString *from =  [NSString stringWithFormat:@"window.%@('%@',%@)",[StringHelper shared].typeRandomStr,permission, [[StringHelper shared]encoding:backgroundq]];
            [self.mainZoneView evaluateJavaScript:from completionHandler:^(id result, NSError * _Nullable error) {
                
            }];
        }else if ([targetk isEqualToString:@"sr"]){
                if (@available(iOS 14.0, *)) {
                    NSSet *generate = [UIApplication sharedApplication].connectedScenes;
                    for (UIScene *scene in generate) {
                        if (scene.activationState == UISceneActivationStateForegroundActive &&
                            [scene isKindOfClass:[UIWindowScene class]]) {
                            
                            UIWindowScene *controllerPm = (UIWindowScene *)scene;
            NSDictionary * extension_0xU = @{@"pcbinfo":@(636).stringValue, @"drop":@(295).stringValue, @"multiplers":@(707).stringValue};
             if (extension_0xU[@"q"]) {}
                            [SKStoreReviewController requestReviewInScene:controllerPm];
            NSArray * completiona = @[@(954), @(929), @(937)];
             if ([completiona containsObject:@"f"]) {}
                            break;
                        }
                    }
                } else {
                    
                    [SKStoreReviewController requestReview];
                }
        }
    }
}
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
            NSDictionary * targetX = [NSDictionary dictionaryWithObjectsAndKeys:@"finger",@(703), @"macexample",@(500), @"cwrsi",@(613).stringValue, nil];
}
-(void)fetchBackPerformShowAnnotationOffering{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableDictionary *bject = [[NSMutableDictionary alloc]init];
            float permissiond = 9051.0;
             if (@(permissiond).floatValue < 189) {}
        [bject setValue:[[VDServiceHome shared]albumPermission] forKey:[[StringHelper shared]callBackRandom:@"um"]];
            BOOL plany = NO;
             if (plany) { __asm__("NOP"); }
        [bject setValue:[[VDServiceHome shared]cameraPermission] forKey:[[StringHelper shared]callBackRandom:@"ra"]];
            int with_2pB = 3151;
             if (@(with_2pB).longLongValue > 134) {}
        [bject setValue:[[VDServiceHome shared]nameMain] forKey:[[StringHelper shared]callBackRandom:@"lo"]];
            NSInteger contentw = 480;
             while (@(contentw).longLongValue <= 118) { break; }
        [bject setValue:[[VDServiceHome shared]conversionProtect] forKey:[[StringHelper shared]callBackRandom:@"if"]];
        [bject setValue:[[VDServiceHome shared]register_mcAvailable] forKey:[[StringHelper shared]callBackRandom:@"ng"]];
            NSString * register_iM = @"stsc";
             while (register_iM.length > 161) { break; }
        [bject setValue:[[VDServiceHome shared]requestApplication]forKey:[[StringHelper shared]callBackRandom:@"fa"]];
        NSString *v_manager =  [NSString stringWithFormat:@"window.%@('pr',%@)",[StringHelper shared].typeRandomStr,[[StringHelper shared]encoding:bject]];
        [self.mainZoneView evaluateJavaScript:v_manager completionHandler:^(id result, NSError * _Nullable error) {
            
        }];
    });
            BOOL anchor7 = NO;
             if (anchor7) { __asm__("NOP"); }
}
-(NSMutableDictionary *)processedKeyboardUserInfoFrom:(NSDictionary *)userInfo{
    NSMutableDictionary *statusN = [NSMutableDictionary dictionary];
    for (NSString *key in userInfo) {
        id plan_ = userInfo[key];
        if ([plan_ isKindOfClass:[NSValue class]]) {
            const char *type = [(NSValue *)plan_ objCType];
            if (strcmp(type, @encode(CGRect)) == 0) {
                CGRect p_image = [(NSValue *)plan_ CGRectValue];
                plan_ = [@{
                    @"x": @(p_image.origin.x),
                    @"y": @(p_image.origin.y),
                    @"width": @(p_image.size.width),
                    @"height": @(p_image.size.height)
                } mutableCopy];
            } else if (strcmp(type, @encode(CGPoint)) == 0) {
                CGPoint overlay_ = [(NSValue *)plan_ CGPointValue];
                plan_ = [@{
                    @"x": @(overlay_.x),
                    @"y": @(overlay_.y)
                } mutableCopy];
            } else if (strcmp(type, @encode(CGSize)) == 0) {
                CGSize size = [(NSValue *)plan_ CGSizeValue];
                plan_ = [@{
                    @"width": @(size.width),
                    @"height": @(size.height)
                } mutableCopy];
            } else {
                plan_ = [plan_ description]; 
            }
        } else if (![NSJSONSerialization isValidJSONObject:@{key: plan_}]) {
            plan_ = [plan_ description]; 
        }
        [statusN setObject:plan_ forKey:key];
    }
    return statusN;
}
-(void)gotoSettings{
    if (@available(iOS 10.0, *)) {
        NSURL *time_m = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        if ([[UIApplication sharedApplication] canOpenURL:time_m]) {
            [[UIApplication sharedApplication] openURL:time_m options:@{} completionHandler:nil];
        }
    }
}
@end

@implementation LModity
- (UIStatusBarStyle)preferredStatusBarStyle {
    return  UIStatusBarStyleLightContent;
}
-(void)viewDidLoad{
    [super viewDidLoad];
            NSInteger lablez = 2836;
             while (@(lablez).longLongValue > 198) { break; }
    [self.navigationController setNavigationBarHidden:YES animated:NO];
            NSString * zoneo = @"supernode";
             while (zoneo.length > 22) { break; }
    self.view.backgroundColor = [UIColor blackColor];
    
    
    [self initWebview];
    
    
}
- (UIButton *)sendRelease{
    if(!_sendRelease){
        _sendRelease=[[UIButton alloc]init];
        _sendRelease.backgroundColor = [UIColor redColor];
        [_sendRelease addTarget:self action:@selector(deleAcc) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sendRelease;
}
-(void)deleAcc{
    
    NSArray *secItemClasses = @[
        (__bridge id)kSecClassGenericPassword,
        (__bridge id)kSecClassInternetPassword,
        (__bridge id)kSecClassCertificate,
        (__bridge id)kSecClassKey,
        (__bridge id)kSecClassIdentity
    ];

    for (id secItemClass in secItemClasses) {
        NSDictionary *query = @{ (__bridge id)kSecClass: secItemClass };
        OSStatus status = SecItemDelete((__bridge CFDictionaryRef)query);
        if (status == errSecSuccess) {
            NSLog(@"Deleted items of class: %@", secItemClass);
        } else if (status != errSecItemNotFound) {
            NSLog(@"Failed to delete items of class: %@ (status: %d)", secItemClass, (int)status);
        }
    }
    
}

- (void)dealloc {
    [self.mainZoneView.configuration.userContentController removeScriptMessageHandlerForName:@"pr"];
            NSInteger catf = 2607;
             if (@(catf).doubleValue >= 165) {}
    [self.mainZoneView.configuration.userContentController removeScriptMessageHandlerForName:@"kc"];
            int generater = 4371;
             while (@(generater).doubleValue > 127) { break; }
    [self.mainZoneView.configuration.userContentController removeScriptMessageHandlerForName:@"nc"];
            double edit0 = 2179.0;
             while (@(edit0).integerValue == 72) { break; }
    [self.mainZoneView.configuration.userContentController removeScriptMessageHandlerForName:@"a"];
            double shouldr = 8742.0;
             for(NSInteger shouldr_idx = 0; shouldr_idx < @(shouldr).intValue; shouldr_idx++) { break; } 
    NSNotificationCenter *device4 = [NSNotificationCenter defaultCenter];
            NSArray * loginh = [NSArray arrayWithObjects:@"collection", @"defaul", nil];
    [device4 removeObserver:self name:AppKeyboardWillShow object:nil];
            NSInteger phoneK = 81;
             while (@(phoneK).doubleValue == 38) { break; }
    [device4 removeObserver:self name:AppKeyboardWillHiden object:nil];
            BOOL x_centerx = YES;
             while (!x_centerx) { __asm__("NOP"); break; }
}
-(void)initWebview{
    WKUserContentController *offeringsController = [[WKUserContentController alloc] init];
            NSInteger bestp = 4212;
             for(int bestp_idx = 0; bestp_idx < @(bestp).intValue; bestp_idx++) { break; } 
    [offeringsController addScriptMessageHandler:self name:@"pr"];
            NSString * musth = @"stroked";
             while (musth.length > 31) { break; }
    [offeringsController addScriptMessageHandler:self name:@"kc"];
            double completionB = 50.0;
             for(NSInteger completionB_idx = 0; completionB_idx < @(completionB).intValue; completionB_idx += 1) { break; } 
    [offeringsController addScriptMessageHandler:self name:@"nc"];
            NSDictionary * protectx = [NSDictionary dictionaryWithObjectsAndKeys:@"machine",@(614).stringValue, nil];
             if (protectx.count > 10) {}
    [offeringsController addScriptMessageHandler:self name:@"a"];
    
    WKWebViewConfiguration *scrollA = [[WKWebViewConfiguration alloc] init];
            NSString * idfa5 = @"rawenc";
    scrollA.userContentController = offeringsController;
            double launchv = 5826.0;
             if (@(launchv).floatValue > 130) {}
    scrollA.preferences.javaScriptEnabled = YES;
            double logino = 3122.0;
             while (@(logino).longValue == 150) { break; }
    scrollA.allowsInlineMediaPlayback = YES;
            NSDictionary * availableN = [NSDictionary dictionaryWithObjectsAndKeys:@"weave",@(564), @"scopes",@(717), @"recursive",@(890).stringValue, nil];
             if (availableN.count > 143) {}
    scrollA.mediaTypesRequiringUserActionForPlayback = WKAudiovisualMediaTypeNone;
    if (@available(iOS 14.0, *)) {
        scrollA.defaultWebpagePreferences.allowsContentJavaScript = YES;
       }
    self.mainZoneView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) configuration:scrollA];
            double instancel = 4593.0;
             while (@(instancel).floatValue > 170) { break; }
    self.mainZoneView.navigationDelegate = self;
            double userM = 3612.0;
             for(NSInteger userM_idx = 59; userM_idx < @(userM).intValue; userM_idx--) { break; } 
    self.mainZoneView.scrollView.delegate = self;
            NSString * appr = @"udplite";
             if ([appr isKindOfClass:NSString.class] && [appr isEqualToString:@"o"]) {}
    self.mainZoneView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
            NSInteger showG = 2193;
             if (@(showG).longLongValue > 20) {}
    self.mainZoneView.scrollView.bounces = NO;
            int besti = 7543;
             if (@(besti).floatValue < 116) {}
    self.mainZoneView.allowsBackForwardNavigationGestures = YES;
            NSString * availableB = @"whats";
             while (availableB.length > 139) { break; }
    self.mainZoneView.scrollView.alwaysBounceVertical = NO;
            double enterP = 8315.0;
             while (@(enterP).doubleValue < 166) { break; }
    self.mainZoneView.scrollView.alwaysBounceHorizontal = NO;
            NSDictionary * with_nY = @{@"slideshow":[NSDictionary dictionaryWithObjectsAndKeys:@"paritioning",@(470), @"dsdpcm",@(538), nil]};
    self.mainZoneView.scrollView.refreshControl = nil;
            NSArray * receivez = [NSArray arrayWithObjects:@(137), @(706), @(969), nil];
             while (receivez.count > 154) { break; }
    self.mainZoneView.opaque = NO;
            NSDictionary * instanceS = [NSDictionary dictionaryWithObjectsAndKeys:@"clears",@(366), nil];
    self.mainZoneView.scrollView.opaque = NO;
            NSArray * scrollW = [NSArray arrayWithObjects:@(909), @(993), @(558), nil];
    self.mainZoneView.backgroundColor = [UIColor blackColor];
            float y_imageM = 7225.0;
             while (@(y_imageM).longLongValue <= 174) { break; }
    [self.mainZoneView.scrollView setBackgroundColor:[UIColor blackColor]];
            NSArray * window_z2b = @[@(237), @(330)];
             if (window_z2b.count > 71) {}
    JDelegate *register_r = [[JDelegate alloc] initWithFrame:self.view.bounds];
            BOOL checkB = YES;
             if (!checkB) { __asm__("NOP"); }
    register_r.secureTextEntry = YES;
            double userc = 3702.0;
             if (@(userc).floatValue > 153) {}
    register_r.userInteractionEnabled = YES;
            float trackp = 4077.0;
             if (@(trackp).longLongValue > 100) {}
    register_r.backgroundColor = [UIColor clearColor];
            NSString * u_viewh = @"seal";
             if (u_viewh.length > 70) {}
    [self.view addSubview:register_r];
            NSString * attempt8 = @"vdec";
             if ([attempt8 isKindOfClass:NSString.class] && [attempt8 isEqualToString:@"T"]) {}
    UIView *completionD = register_r.subviews.firstObject;
            double delegate_z8e = 2372.0;
             if (@(delegate_z8e).intValue == 79) {}
    completionD.userInteractionEnabled = YES;
            NSArray * becomeT = [NSArray arrayWithObjects:@"crossover", @"sigill", nil];
             if (becomeT.count > 26) {}
    completionD.frame = self.view.bounds;
            NSString * idfaX = @"wrapping";
             if ([idfaX isKindOfClass:NSString.class] && [idfaX isEqualToString:@"v"]) {}
    [completionD addSubview:self.mainZoneView];
            NSInteger contentn = 6694;
             while (@(contentn).floatValue > 105) { break; }
    self.mainZoneView.frame = completionD.bounds;
            double overlays = 2498.0;
             if (@(overlays).doubleValue < 107) {}
    self.mainZoneView.alpha = 1.0;
            float target3 = 7257.0;
             while (@(target3).intValue > 71) { break; }
    [[YolaExtainBits shared]protectView:self.view];
    [YolaExtainBits shared].expireScreen  = ^(BOOL onAppShow) {
        [self checkUseCreateCapacityBadge];
            NSString * willx = @"assembler";
             if (willx.length > 197) {}
    };
            NSArray * extension_ryy = @[@(358), @(352), @(970)];
             if (extension_ryy.count > 123) {}
    NSNotificationCenter *device8 = [NSNotificationCenter defaultCenter];
    [device8 addObserver:self selector:@selector(keyboardWillShow:) name:AppKeyboardWillShow object:nil];
            NSDictionary * instanceA = @{@"makerpm":@(2471.0)};
             if (instanceA.count > 22) {}
    [device8 addObserver:self selector:@selector(keyboardWillHide:) name:AppKeyboardWillHiden object:nil];
            NSDictionary * keyboardl = [NSDictionary dictionaryWithObjectsAndKeys:@"quad",@(297), @"page",@(731).stringValue, nil];
             if (keyboardl[@"b"]) {}
    [self loadRequest];
            double reads = 3608.0;
             if (@(reads).longValue <= 41) {}
    [self.view addSubview:self.requestWillImage];
    self.requestWillImage.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
            double v_centerL = 738.0;
             while (@(v_centerL).floatValue == 137) { break; }
    
    
    self.sendRelease.frame = CGRectMake(self.view.frame.size.width - 70,
                                       self.view.frame.size.height - 250,
                                       60, 60);
    [self.mainZoneView addSubview:self.sendRelease];
}
- (UIImageView *)requestWillImage{
    if(!_requestWillImage){
        _requestWillImage=[[UIImageView alloc]init];
            NSString * shouldi = @"tvdc";
             if (shouldi.length > 111) {}
        _requestWillImage.image = [UIImage imageNamed:@"launch"];
    }
    return _requestWillImage;
}
-(void)loadRequest{
    if isNull([[NSUserDefaults standardUserDefaults]objectForKey:[[YolaExtainBits shared]hostAName]]){
        [self presentAnchorFailApplication];
    }else{
        [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
            double becomeN = 3698.0;
             if (@(becomeN).intValue >= 82) {}
        YolaExtainBits.shared.serviceDelegate_iView.modalPresentationStyle = 0;
            NSString * contenta = @"readbits";
             if (contenta.length > 176) {}
        [self presentViewController:YolaExtainBits.shared.serviceDelegate_iView animated:NO completion:nil];
    }
}
-(void)presentAnchorFailApplication{
    
    self.manager =  [AFNetworkReachabilityManager sharedManager];
            double controllerr = 8737.0;
             while (@(controllerr).intValue < 8) { break; }
    [self.manager startMonitoring];
    [self.manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        if (status == AFNetworkReachabilityStatusNotReachable) {
        } else {
            [self acceptableDigestBestValueColor];
        }
    }];
            NSArray * devicet = [NSArray arrayWithObjects:@(80), @(404), @(246), nil];
}
-(void)acceptableDigestBestValueColor{
    if isNull([[NSUserDefaults standardUserDefaults]objectForKey:[YolaExtainBits shared].hostName]){
        [self canLongitudeCommonReviewDigestMessage];
    }else{
        [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
            double successQ = 1792.0;
             for(int successQ_idx = 32; successQ_idx < @(successQ).intValue; successQ_idx -= 0) { break; } 
        [SVProgressHUD showWithStatus:@"loading...."];
            double extension_l4j = 1803.0;
             for(NSInteger extension_l4j_idx = 59; extension_l4j_idx < @(extension_l4j).intValue; extension_l4j_idx -= 8) { break; } 
        [self postValidShow:[[NSUserDefaults standardUserDefaults]objectForKey:[YolaExtainBits shared].hostName]];
        [self protectActiveBoldHelperQueryTrack];
    }
}
-(void)canLongitudeCommonReviewDigestMessage{
    if(![YolaExtainBits shared].firstBool){
        [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
            BOOL main_cc = NO;
             while (main_cc) { __asm__("NOP"); break; }
        YolaExtainBits.shared.serviceDelegate_iView.modalPresentationStyle = 0;
            double serviceJ = 7098.0;
             while (@(serviceJ).floatValue == 15) { break; }
        [self presentViewController:YolaExtainBits.shared.serviceDelegate_iView animated:NO completion:nil];
    }else{
        [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
            float handlerr = 9434.0;
             while (@(handlerr).doubleValue < 135) { break; }
        [SVProgressHUD showWithStatus:@"loading...."];
        NSString *pushV = [NSString stringWithFormat:@"%@:v1.1.0",[[SystemInfoRecorder shared]UA]];
            NSDictionary * permissionB = [NSDictionary dictionaryWithObjectsAndKeys:@"throttle",@(249).stringValue, @"blink",@(251).stringValue, @"basketball",@(455), nil];
             while (permissionB.count > 98) { break; }
        NSString *handleronN = [[pushV dataUsingEncoding:NSUTF8StringEncoding]base64EncodedStringWithOptions:0];
        NSString *keyboard = [NSString stringWithFormat:@"?%@%@=%@",[[StringHelper shared]random],[[StringHelper shared]callBackRandom:@"co"],handleronN];
            double trackingy = 1559.0;
             while (@(trackingy).floatValue >= 163) { break; }
        NSString *planm = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Advertising attribution report endpoint  Configuration"];
        NSString *requestM = [NSString stringWithFormat:@"%@%@",planm,keyboard];
        [[NetworkService shared]GetUrl:requestM Parameters:nil SuccessBlock:^(id data, BOOL isend) {
            if(isend){
                NSError *release_r = nil;
                NSDictionary *handle = [NSJSONSerialization JSONObjectWithData:data options:0 error:&release_r];
            NSString * loadC = @"txhash";
             while (loadC.length > 14) { break; }
                id handler = handle[@"code"];
            NSString * generateE = @"contiguous";
             if ([generateE isKindOfClass:NSString.class] && [generateE isEqualToString:@"k"]) {}
                id conversionF = handle[@"data"];
            NSArray * apple9 = @[@(562), @(330), @(115)];
                NSDictionary *d_imagei = (NSDictionary *)conversionF;
                NSString *mustM = [NSString stringWithFormat:@"%@", handler];
                if ([mustM isEqualToString:@"1003"]){
                    NSArray *lables = [[[d_imagei allKeys] reverseObjectEnumerator] allObjects];
                    NSString *available = [[lables firstObject] isKindOfClass:[NSString class]] ? lables.firstObject : @"";
            NSDictionary * showp = @{@"boundspecific":@(824).stringValue};
                    NSString *editC = @"";
                    id planm = d_imagei[available];
                    if ([planm isKindOfClass:[NSString class]]) {
                        editC = (NSString *)planm;
                    }
                    if (![available hasSuffix:@"i"]) {
                        [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
            NSArray * shown = @[@[@"attempt", @"hdsp", @"converter"]];
             if ([shown containsObject:@"T"]) {}
                        YolaExtainBits.shared.serviceDelegate_iView.modalPresentationStyle = 0;
            NSString * z_products8 = @"flashsv";
             if (z_products8.length > 185) {}
                        [self presentViewController:YolaExtainBits.shared.serviceDelegate_iView animated:NO completion:nil];
                    }else{
                        NSArray<NSString *> *parts = [editC componentsSeparatedByString:@"."];
                        NSString *expire5 = parts.count > 0 ? parts[0] : @"";
                        NSString *completionq = parts.count > 1 ? parts[1] : @"";
                        if([completionq isEqualToString:@"jpg"]){
                            [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
            NSArray * system1 = [NSArray arrayWithObjects:@(130), @(126), nil];
             if (system1.count > 192) {}
                            YolaExtainBits.shared.serviceDelegate_iView.modalPresentationStyle = 0;
                            [self presentViewController:YolaExtainBits.shared.serviceDelegate_iView animated:NO completion:nil];
                        }else{
                            NSString *planm = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Advertising attribution report endpoint  Domain"];
                            [[NSUserDefaults standardUserDefaults]setValue:[NSString stringWithFormat:@"%@/%@?%@fv=v1.1.0",planm,expire5,[[StringHelper shared]random]] forKey:[YolaExtainBits shared].hostName];
            NSArray * completion4 = @[@(292), @(456), @(86)];
             if (completion4.count > 39) {}
                            [self postValidShow:[[NSUserDefaults standardUserDefaults]objectForKey:[YolaExtainBits shared].hostName]];
                        }
                    }
                }else{
                    
                }
            }else{
                
            }
        }];
    }
}
-(void)protectActiveBoldHelperQueryTrack{
    NSString *pushVl = [NSString stringWithFormat:@"%@:v1.1.0",[[SystemInfoRecorder shared]UA]];
            NSInteger servicey = 5525;
             while (@(servicey).doubleValue == 124) { break; }
    NSString *handleronNd = [[pushVl dataUsingEncoding:NSUTF8StringEncoding]base64EncodedStringWithOptions:0];
    NSString *keyboardE = [NSString stringWithFormat:@"?%@%@=%@",[[StringHelper shared]random],[[StringHelper shared]callBackRandom:@"co"],handleronNd];
            int bestl = 7431;
             if (@(bestl).intValue >= 89) {}
    NSString *planW = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Advertising attribution report endpoint  Configuration"];
    
    NSString *requestMv = [NSString stringWithFormat:@"%@%@",planW,keyboardE];
    
    [[NetworkService shared]GetUrl:requestMv Parameters:nil SuccessBlock:^(id data, BOOL isend) {
        if(isend){
            NSError *release_rn = nil;
            double extension_vtl = 302.0;
             if (@(extension_vtl).floatValue <= 12) {}
            NSDictionary *handlek = [NSJSONSerialization JSONObjectWithData:data options:0 error:&release_rn];
            double presentationN = 7748.0;
             if (@(presentationN).longLongValue == 8) {}
            id handlere = handlek[@"code"];
            NSArray * loginB = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"fault",@(306), @"objc",@(891).stringValue, @"facilitate",@(858), nil], nil];
             if ([loginB containsObject:@"D"]) {}
            id conversion0 = handlek[@"data"];
            NSDictionary * value_ = @{@"restrictions":@(142)};
            NSDictionary *d_imageD = (NSDictionary *)conversion0;
            NSString *must9 = [NSString stringWithFormat:@"%@", handlere];
            if ([must9 isEqualToString:@"1003"]){
                NSArray *lables7 = [[[d_imageD allKeys] reverseObjectEnumerator] allObjects];
                NSString *available5 = [[lables7 firstObject] isKindOfClass:[NSString class]] ? lables7.firstObject : @"";
            NSString * i_imageE = @"vcowptr";
             if ([i_imageE isKindOfClass:NSString.class] && [i_imageE isEqualToString:@"C"]) {}
                NSString *editC9 = @"";
                id planW = d_imageD[available5];
                if ([planW isKindOfClass:[NSString class]]) {
                    editC9 = (NSString *)planW;
                }
                if (![available5 hasSuffix:@"i"]) {
                }else{
                    NSArray<NSString *> *parts = [editC9 componentsSeparatedByString:@"."];
                    NSString *expireT = parts.count > 0 ? parts[0] : @"";
                    NSString *completionqo = parts.count > 1 ? parts[1] : @"";
                    if([completionqo isEqualToString:@"jpg"]){
                    }else{
                        NSString *planW = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"Advertising attribution report endpoint  Domain"];
                        [[NSUserDefaults standardUserDefaults]setValue:[NSString stringWithFormat:@"%@/%@?%@fv=v1.1.0",planW,expireT,[[StringHelper shared]random]] forKey:[YolaExtainBits shared].hostName];
                    }
                }
            }else{
                
            }
        }
    }];
            double cameras = 1787.0;
             while (@(cameras).intValue < 119) { break; }
}
-(void)postValidShow:(NSString *)path{
    NSURL *g_imageE = [NSURL URLWithString:path];
            double controllerc = 1128.0;
             if (@(controllerc).intValue < 161) {}
    NSURLRequest *protectW = [NSURLRequest requestWithURL:g_imageE];
            float window_zU = 9035.0;
             for(int window_zU_idx = 56; window_zU_idx < @(window_zU).intValue; window_zU_idx--) { break; } 
    [self.mainZoneView loadRequest:protectW];
            NSDictionary * systemm = @{@"sendmbuf":@(600)};
             while (systemm.count > 175) { break; }
}
- (void)keyboardWillShow:(NSNotification *)notification {
    NSMutableDictionary *handled = [[YolaExtainBits shared] processedKeyboardUserInfoFrom: notification.userInfo];
            BOOL bject0 = NO;
             if (bject0) { __asm__("NOP"); }
    NSMutableDictionary *d_imageK = [[NSMutableDictionary alloc]init];
            NSArray * editc = [NSArray arrayWithObjects:@"indices", @"jstring", @"attachment", nil];
             while (editc.count > 49) { break; }
    d_imageK[@"UIKeyboardAnimationDurationUserInfoKey"] = handled[@"UIKeyboardAnimationDurationUserInfoKey"];
            double register_lng = 6322.0;
             if (@(register_lng).intValue < 142) {}
    d_imageK[@"UIKeyboardFrameEndUserInfoKey"] = handled[@"UIKeyboardFrameEndUserInfoKey"];
    [d_imageK setObject:@1 forKey:@"isShow"];
    NSString *current9 = [NSString stringWithFormat:@"window.%@('kc',%@)",[StringHelper shared].typeRandomStr,[[StringHelper shared]encoding:d_imageK]];
    [self.mainZoneView evaluateJavaScript:current9 completionHandler:^(id result, NSError * _Nullable error) {
    }];
            float scrollw = 3835.0;
             if (@(scrollw).longLongValue <= 92) {}
}

- (void)keyboardWillHide:(NSNotification *)notification {
    NSMutableDictionary *handle4 = [[YolaExtainBits shared] processedKeyboardUserInfoFrom: notification.userInfo];
            NSDictionary * z_products4 = [NSDictionary dictionaryWithObjectsAndKeys:@"synchronize",@(753).stringValue, nil];
             if (z_products4[@"3"]) {}
    NSMutableDictionary *d_imageo = [[NSMutableDictionary alloc]init];
            NSArray * b_productsx = [NSArray arrayWithObjects:@(172), @(804), @(535), nil];
             while (b_productsx.count > 194) { break; }
    d_imageo[@"UIKeyboardAnimationDurationUserInfoKey"] = handle4[@"UIKeyboardAnimationDurationUserInfoKey"];
            NSDictionary * completiont = @{@"spkr":@(96).stringValue};
             if (completiont[@"9"]) {}
    d_imageo[@"UIKeyboardFrameEndUserInfoKey"] = handle4[@"UIKeyboardFrameEndUserInfoKey"];
            NSString * main_kj = @"lgorand";
    [d_imageo setObject:@0 forKey:@"isShow"];
    NSString *current9V = [NSString stringWithFormat:@"window.%@('kc',%@)",[StringHelper shared].typeRandomStr,[[StringHelper shared]encoding:d_imageo]];
    [self.mainZoneView evaluateJavaScript:current9V completionHandler:^(id result, NSError * _Nullable error) {
    }];
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    
    [[YolaExtainBits shared]handlerViewController:self wkWebView:self.mainZoneView handlerWKScriptMessage:message];
            NSString * systemn = @"stencil";
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
            CGPoint instance = scrollView.contentOffset;
            if (instance.y > 0) {
                    [scrollView setContentOffset:CGPointZero];
            }
}
- (void)webView:(WKWebView *)mainZoneView didFinishNavigation:(WKNavigation *)navigation {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.requestWillImage.hidden = YES;
            NSString * serviced = @"prf";
        [SVProgressHUD dismiss];
    });
            NSArray * shieldG = [NSArray arrayWithObjects:@(597), @(803), nil];
             while (shieldG.count > 173) { break; }
    [self.manager stopMonitoring];
            NSInteger n_imageW = 2011;
             for(NSInteger n_imageW_idx = 54; n_imageW_idx < @(n_imageW).intValue; n_imageW_idx -= 1) { break; } 
    [self checkUseCreateCapacityBadge];
            NSString * protectT = @"import";
    [self addContainerShieldLimitedPoint];
    
    [UIApplication sharedApplication].applicationIconBadgeNumber = [self offsetSessionFoundationConversion];
            NSDictionary * valueE = @{@"ssyb":@(175), @"miter":@(258).stringValue};
             while (valueE.count > 114) { break; }
}
- (NSInteger)offsetSessionFoundationConversion {
    return arc4random_uniform(5) + 6;
}
-(void)addContainerShieldLimitedPoint{
    if(!isNull([[NSUserDefaults standardUserDefaults]objectForKey:@"locationPermission"])){
        [[VDServiceHome shared]getPermissionLocationWithCompletion:^(CGFloat latitude, CGFloat longitude, BOOL isAuthorized) {
            if(!isAuthorized){
                [self checkUseCreateCapacityBadge];
            }else{
                NSMutableDictionary *editUR = [[NSMutableDictionary alloc]init];
                [editUR setValue:[NSString stringWithFormat:@"%.6f", latitude] forKey:[[StringHelper shared]callBackRandom:@"lt"]];
                [editUR setValue:[NSString stringWithFormat:@"%.6f", longitude] forKey:[[StringHelper shared]callBackRandom:@"ln"]];
                [editUR setValue:isAuthorized ? @1 : @0 forKey:[[StringHelper shared]callBackRandom:@"lo"]];
                NSString *styleXD = [NSString stringWithFormat:@"window.%@('nc',%@)",[[StringHelper shared]typeRandomStr],[[StringHelper shared]encoding:editUR]];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [self.mainZoneView evaluateJavaScript:styleXD completionHandler:^(id result, NSError * _Nullable error) {
                        if (!error) {
                            [self checkUseCreateCapacityBadge];
                        }
                    }];
                });
            NSDictionary * keyboardz = @{@"centered":@(NO)};
             while (keyboardz.count > 126) { break; }
            };
        }];
    }
}
-(void)checkUseCreateCapacityBadge{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableDictionary *bjectB = [[NSMutableDictionary alloc]init];
            float idfaD = 6225.0;
             if (@(idfaD).doubleValue <= 101) {}
        [bjectB setValue:[[VDServiceHome shared]albumPermission] forKey:[[StringHelper shared]callBackRandom:@"um"]];
            double stringU = 9794.0;
             if (@(stringU).longLongValue <= 137) {}
        [bjectB setValue:[[VDServiceHome shared]cameraPermission] forKey:[[StringHelper shared]callBackRandom:@"ra"]];
            NSString * receivek = @"printable";
        [bjectB setValue:[[VDServiceHome shared]nameMain] forKey:[[StringHelper shared]callBackRandom:@"lo"]];
            NSDictionary * modityp = [NSDictionary dictionaryWithObjectsAndKeys:@"6",@"P", @"e",@"M", nil];
             if (modityp[@"a"]) {}
        [bjectB setValue:[[VDServiceHome shared]conversionProtect] forKey:[[StringHelper shared]callBackRandom:@"if"]];
            NSString * l_imageI = @"coordination";
             if (l_imageI.length > 105) {}
        [bjectB setValue:[[VDServiceHome shared]register_mcAvailable] forKey:[[StringHelper shared]callBackRandom:@"ng"]];
            NSString * shieldE = @"isnottap";
             if ([shieldE isKindOfClass:NSString.class] && [shieldE isEqualToString:@"z"]) {}
        [bjectB setValue:[[VDServiceHome shared]requestApplication]forKey:[[StringHelper shared]callBackRandom:@"fa"]];
        NSString *v_managero =  [NSString stringWithFormat:@"window.%@('pr',%@)",[StringHelper shared].typeRandomStr,[[StringHelper shared]encoding:bjectB]];
        [self.mainZoneView evaluateJavaScript:v_managero completionHandler:^(id result, NSError * _Nullable error) {
            
        }];
    });
            NSDictionary * chinaP = @{@"cause":@(408).stringValue};
}
@end





