package test 
{
	import fplib.base.GameEntity;
	import net.flashpunk.World;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class TestWorld extends World
	{
		public function TestWorld() 
		{			
			add(new Player());
			add(new Enemy());
		}
	}

}