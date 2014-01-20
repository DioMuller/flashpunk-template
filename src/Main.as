package
{
	import test.TestCreator;
	import test.TestWorld;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import fplib.maping.OgmoMap;
	import test.Assets;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Main extends Engine 
	{
		
		public function Main():void 
		{
			super(800, 600, 60, false);
			FP.world = new OgmoMap(
						Assets.LEVEL_01,
						Assets.TILESET_TERRAIN,
						Assets.TILESET_TERRAIN,
						Assets.IMAGE_BACKGROUND,
						new TestCreator() );
			//new TestWorld();
		}
		
		override public function init():void
		{
			trace("FlashPunk has started successfully!");
		}
	}
	
}