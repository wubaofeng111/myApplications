
#import <Foundation/Foundation.h> 
@interface SingleData : NSObject
+ (SingleData *)shareSingleData;
@end


//在.m中实现对象的创建方法

// 该类单例对象的唯一指针
static SingleData *instance = nil;
@implementation SingleData
// 实现单例类的类方法（自己声明的方法）

+ (SingleData *)shareSingleData {
    // 如果是第一次创建，instance必然为空，这时创建单例对象，否则直接返回指针地址（保证单例地址的唯一性）
    if (nil == instance) {
        instance = [[SingleData alloc]init];
    }
    return instance;
    // 不管是第几次用这个方法，只会返回第一次生成的空间地址
}
// 如果该单例有一些需要初始化的变量，重写init方法实现
- (instancetype)init {
    if (self = [super init]) {
        // 这里往往放一些要初始化的变量，比如单例对象具有一个字典属性，那么就要在此处初始化
    };
    return self;
}
// 该类自带的alloc方法</span>
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (nil == instance) {
        instance = [super allocWithZone:zone];
    }
    return instance;
    // 不管是第几次用这个方法，只会返回第一次生成的空间地址
}
//<span style="color:#FF0000;">// 对象遵守copying协议的时候，防止生成新空间</span>
- (id)copyWithZone:(NSZone *)zone {     return self; }
// 重写copy方法，让外界在对该类进行copy的时候，不产生新的空间范围，直接返回原有的空间首地址
- (id)copy {     return self; }
// 当别人对这块唯一的内存空间进行retain操作时，让该操作不起作用
//- (instancetype)retain {     return self; }
// 重写release方法
// 保证外界对该类的唯一一个势力对象进行release操作的时候，不让该对象被释放掉
// oneway 主要针对在多线程环境下，单向执行，没有“回滚”操作
//- (oneway void)release {      }
// 重写autorelease方法
//- (instancetype)autorelease {     return self; }
// 当外界访问这块空间的retainCount值的时候，返回一个-1或者2^64-1
// 其实就是在间接的告诉访问者，这块空间不属于你的管理范围
//- (NSUInteger)retainCount {     return NSUIntegerMax; }
@end
#import <Foundation/Foundation.h>

@interface SingleTon : NSObject

+(SingleTon*)shareSingleTon;

@end

@implementation SingleTon
static SingleTon *aSingle = nil;
+(SingleTon*)shareSingleTon
{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        aSingle = [[SingleTon alloc]init];
    });
    return aSingle;
}
+(id)allocWithZone:(struct _NSZone *)zone
{
    if(aSingle == nil )
    return [[super allocWithZone: zone]init];
    return aSingle;
}
-(id)copy
{
    return aSingle;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@",[SingleTon shareSingleTon]);
        NSLog(@"%@",[SingleTon shareSingleTon]);
        NSLog(@"%@",[[SingleTon alloc]init]);
        NSLog(@"%@",[[SingleTon shareSingleTon]copy]);
        NSLog(@"Hello, World!");
    }
    return 0;
}
