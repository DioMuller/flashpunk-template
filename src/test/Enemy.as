package test 
{
	import fplib.base.GameEntity;
	import fplib.math.Vector2D;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Enemy extends GameEntity
	{
		[Embed(source = "../../assets/sample-sprite.png")] private const ENEMY : Class;
		
		public function Enemy() 
		{
			graphic = new Image(ENEMY);
			
			position = new Vector2D(100, 100);
			
			setHitbox(10, 10);
			type = "enemy";
		}
		
	}
}
