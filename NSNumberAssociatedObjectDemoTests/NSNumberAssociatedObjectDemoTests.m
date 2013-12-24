#import <XCTest/XCTest.h>
#import <objc/runtime.h>

@interface NSNumberAssociatedObjectDemoTests : XCTestCase
@end

static const char associationKey = 0;

@implementation NSNumberAssociatedObjectDemoTests

- (void)testExample
{
    NSNumber* num = @( 1 );
    NSMutableArray* attachArray = [ NSMutableArray new ];
    
    objc_setAssociatedObject( num, &associationKey, attachArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}

@end
