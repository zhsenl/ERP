/**
 * Created with JetBrains RubyMine.
 * User: zhsenl
 * Date: 13-7-1
 * Time: 上午11:28
 * To change this template use File | Settings | File Templates.
 */
/**
 * 弹出层
 * @param popUp
 * @param overlay
 */
function popUp(popUp, overlay){
    jQuery("#" + overlay).css('display', 'block'); // displaying the overlay
    jQuery("#" + popUp).css('display', 'block'); // displaying the popup
    jQuery("#" + popUp).fadeIn(500); // Displaying popup with fade in animation
}
/**
 * 收回层
 * @param popUp
 * @param overlay
 */
function popOff(popUp, overlay){
    jQuery("#" + overlay).fadeOut(500); // displaying the overlay
    jQuery("#" + popUp).fadeOut(500); //function to redirect the page after few seconds
}