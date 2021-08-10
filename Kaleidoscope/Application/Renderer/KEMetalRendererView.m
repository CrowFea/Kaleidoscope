//
//  KEMetalRendererView.m
//  Kaleidoscope
//
//  Created by liusiyuan on 2021/8/9.
//

#import "KEMetalRendererView.h"

@interface KEMetalRendererView()

@property (nonatomic, strong) id<MTLFunction> vertexFunc;
@property (nonatomic, strong) id<MTLFunction> fragmentFunc;
@property (nonatomic, strong) id<MTLRenderPipelineState> pipelineState;
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


- (void)loadShadersWithVertexName: (NSString*)vertex FragmentName: (NSString*)fragment {
    NSBundle* bundle = [NSBundle mainBundle];
    id<MTLLibrary> defalutLib = [self.device newDefaultLibraryWithBundle:bundle error:nil];
    self.vertexFunc = [defalutLib newFunctionWithName:vertex];
    self.fragmentFunc = [defalutLib newFunctionWithName:fragment];
    return;
}

- (void)setupPipeline {
    MTLRenderPipelineDescriptor* pipeLineDes = [[MTLRenderPipelineDescriptor alloc] init];
    pipeLineDes.vertexFunction = self.vertexFunc;
    pipeLineDes.fragmentFunction =  self.fragmentFunc;
    pipeLineDes.colorAttachments[0].pixelFormat = self.colorPixelFormat;
    self.pipelineState = [self.device newRenderPipelineStateWithDescriptor:pipeLineDes error:nil];
    
    return;
}


#pragma mark - MTKViewDelegate

- (void)mtkView:(MTKView *)view drawableSizeWillChange:(CGSize)size {
    
}

- (void)drawInMTKView:(MTKView *)view {
    
}

@end
