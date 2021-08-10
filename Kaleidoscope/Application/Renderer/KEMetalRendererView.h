//
//  KEMetalRendererView.h
//  Kaleidoscope
//
//  Created by liusiyuan on 2021/8/9.
//

#ifndef KEMetalRendererView_h
#define KEMetalRendererView_h

#import <UIKit/UIKit.h>
#import <MetalKit/MetalKit.h>
@interface KEMetalRendererView : MTKView
- (void)loadShadersWithVertexName: (NSString*)vertex FragmentName: (NSString*)fragment 
@end


#endif /* KEMetalRendererView_h */
