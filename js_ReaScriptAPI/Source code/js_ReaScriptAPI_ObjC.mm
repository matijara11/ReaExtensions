#import <Cocoa/Cocoa.h>
#import <objc/objc-runtime.h>

bool JS_Window_SetOpacity_ObjC(void* hwnd, double alpha)
{
   if ([(id)hwnd isKindOfClass:[NSWindow class]])
   {
      NSWindow *window = (NSWindow *)hwnd;
      CGFloat opacity = alpha;
      [window setAlphaValue:opacity];
      [window setOpaque:NO];
	  return true;
   }  
   else
		return false;
}