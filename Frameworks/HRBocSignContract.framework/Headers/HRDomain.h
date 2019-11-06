//
//  MyDomain.h
//  AFNetworking
//
//  Created by 毕战路 on 2019/7/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HRDomain : NSObject

@property(nonatomic,copy) NSString* signHost;
@property(nonatomic,copy) NSString* faceHost;

+(instancetype)instance;

-(instancetype)setSignHost:(NSString*)signHost andFaceHost:(NSString*)faceHost;

@end

NS_ASSUME_NONNULL_END
