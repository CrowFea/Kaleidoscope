//
//  KEMetalRendererView.m
//  Kaleidoscope
//
//  Created by liusiyuan on 2021/8/9.
//

#import "KEMetalRendererView.h"

@interface KEMetalRendererView()



@end

@implementation KEMetalRendererView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.device = MTLCreateSystemDefaultDevice();
        self.preferredFramesPerSecond = 30;
    }
    return self;
}




#pragma mark - MTKViewDelegate

- (void)mtkView:(MTKView *)view drawableSizeWillChange:(CGSize)size {
    
}

- (void)drawInMTKView:(MTKView *)view {
    
}

@end
