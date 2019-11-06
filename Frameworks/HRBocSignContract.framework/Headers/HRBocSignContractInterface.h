//
//  CreditInterface.h
//  CreditInformation
//
//  Created by hr on 2018/6/30.
//  Copyright © 2018年 CreditInformation.com. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "HRDomain.h"
typedef void(^successAlertResultBlock)(NSDictionary *successAlertDic);
typedef void(^errorResultBlock)(NSDictionary *errorDic);
typedef void(^SignCompleteCallBack)(BOOL isCompleted,NSDictionary *signCompleteDic);

//! Project version string for YourSDK.
FOUNDATION_EXPORT const unsigned char HRBocSignContractVersionString[];

@interface HRBocSignContractInterface : NSObject

@property(nonatomic,strong) NSString* orderNo;
@property(nonatomic,strong) NSString* assurerNo;

/**
 *  类方法
 */
+ (HRBocSignContractInterface *)sharedUtil;

/**
 电子签约调用
 @param orderNo 订单号
 @param assurerNo 合作商户号
 @param signCompleteCallBack 签署成功回调
 @param error 页面跳转失败，1.有些参数为nil 2.接口请求失败或者没有网络

 */
- (void)signContractWithOrderNo:(NSString *)orderNo assurerNo:(NSString *)assurerNo signComplete:(SignCompleteCallBack)signCompleteCallBack  error:(errorResultBlock)error;

@end
