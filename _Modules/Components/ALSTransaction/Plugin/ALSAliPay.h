//
//  ALSPay.h
//  Pay-inner
//
//  Created by  杨子民 on 2017/12/14.
//  Copyright © 2017年 yangzm. All rights reserved.
//

#import "_Protocols.h"
#import "ALSFumentProtocol.h"
#import "ALSThirdPartyPaymentInfitInfo.h"

@interface ALSAliPay : NSObject <ALSFumentPlugProtocol>

@property(nonatomic,assign)BOOL isdebug;

- (_PaymentPlatformType)getName;
- (BOOL)IsDebug;
- (void)setDebug:(BOOL)isdebug;
@end
