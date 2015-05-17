//
//  UIView+GradientMask.m

#import "UIView+GradientMask.h"

@implementation UIView (GradientMask)

- (void)addGradientMaskWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint
{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = @[(id)[[UIColor clearColor] CGColor], (id)[[UIColor whiteColor] CGColor]];
    gradient.startPoint = startPoint;
    gradient.endPoint = endPoint;
    
    [self.layer setMask:gradient];
}

@end
