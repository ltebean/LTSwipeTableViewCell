# ![LTSwipeTableViewCell](https://raw.githubusercontent.com/ltebean/LTSwipeTableViewCell/master/demo.gif)

## Usage

Make your custom cell extend LTSwipeTableViewCell and call the correspoing methods in it

```objective-c
@interface LTSwipeTableViewCell : UITableViewCell
-(void) addRightView:(UIView *) view;
-(void) animateBack;
@end
```