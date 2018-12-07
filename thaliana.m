#import "thaliana.h"
@interface UIApplication (Undocumented)
    - (void) launchApplicationWithIdentifier: (NSString*)identifier suspended: (BOOL)suspended;
@end
@implementation thaliana{
}

//Return the icon of your module here
- (UIImage *)iconGlyph
{
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

//Return the color selection color of your module here
- (UIColor *)selectedColor
{
	return [UIColor blueColor];
}

- (BOOL)isSelected
{
  return _selected;
}

- (void)setSelected:(BOOL)selected
{
	_selected = selected;

  [super refreshState];

  if(_selected)
  {
    [[UIApplication sharedApplication] launchApplicationWithIdentifier:@"com.firebird.firebird-emu" suspended: FALSE];
  }
  else
  {
    //Your module got unselected, do something
  }
}

@end
