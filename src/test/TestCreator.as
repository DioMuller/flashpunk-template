package test 
{
	import fplib.maping.EntityCreator;
	import net.flashpunk.Entity;
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class TestCreator extends EntityCreator
	{
		
		public function TestCreator() 
		{
			
		}
		
		override public function CreateEntity(type:String, xml:XML):Entity 
		{
			if ( type == "Player" )
			{
				return new Player();
			}
			
			return null;
		}
		
	}

}