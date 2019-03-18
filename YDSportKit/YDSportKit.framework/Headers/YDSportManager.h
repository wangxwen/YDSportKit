//
//  YDSportManager.h
//  yodoSDK
//
//  Created by wxw on 2019/3/16.
//  Copyright © 2019年 yuedong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSError.h"

@class YDSportManager;

@protocol YDSportManagerDelegate <NSObject>

/** 点击计步分享的回调
 @param manager YDSportManager
 @param shareImage 要分享的图片
 @param currentVC 计步分享所在控制器
 */
- (void)sportManager:(YDSportManager *)manager didTriggerShareStep:(UIImage *)shareImage currentVC:(UIViewController *)currentVC;

@end

@interface YDSportManager : NSObject

@property (nonatomic, strong, readonly) NSString *appID;
@property (nonatomic, strong, readonly) NSString *appKey;
@property (nonatomic, weak) id<YDSportManagerDelegate> delegate;

+ (YDSportManager *)shareManager;

/** 注册SDK
 @param appID 由悦动圈提供的app_id
 @param appKey 由悦动圈提供的app_key
 @completionHandle 注册结果的回调
 */
+ (void)registerWithAppID:(NSString *)appID
                   appKey:(NSString *)appKey
        completionHanlder:(void (^)(BOOL success, MSError *error))completionHandler;

/**
 获取SDK注册状态
 */
+ (BOOL)registerSuccess;

/** 弹出运动计步页
 @param currentVC 当前控制器
 @completionHandle 结果回调
 */
+ (void)showYDSportHomepageWithViewController:(UIViewController * _Nonnull)currentVC
                            completionHanlder:(void (^)(BOOL success, MSError *error))completionHandler;

@end

