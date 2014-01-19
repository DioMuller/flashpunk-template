package
{
	import test.TestWorld;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Main extends Engine 
	{
		
		public function Main():void 
		{
			super(800, 600, 60, false);
			FP.world = new TestWorld();
		}
		
		override public function init():void
		{
			trace("FlashPunk has started successfully!");
		}
	}
	
}