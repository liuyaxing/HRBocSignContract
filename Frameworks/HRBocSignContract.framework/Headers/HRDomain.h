//
//  MyDomain.h
//  AFNetworking
//
//  Created by 毕战路 on 2019/7/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HRDomain : NSObject

@property(nonatomic,copy) NSString* signPlatFormHost;
@property(nonatomic,copy) NSString* faceHost;

@property(nonatomic,copy) UIColor* btnBackgroundColor;
@property(nonatomic,copy) UIColor* btnTitleColor;


+(instancetype)instance;

-(instancetype)setSignHost:(NSString*)signPlatFormHost andFaceHost:(NSString*)faceHost;

-(instancetype)setSignPlatFormHost:(NSString*)signPlatFormHost andFaceHost:(NSString*)faceHost;



-(instancetype)setBtnBackgroundColor:(UIColor*)signHost andBtnTitleColor:(UIColor*)faceHost;

-(NSString*)signHost;

@end

NS_ASSUME_NONNULL_END
