package test 
{
	import fplib.base.GameEntity;
	import fplib.math.PhysicsEntity;
	import fplib.math.steering.Seek;
	import fplib.math.Vector2D;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Enemy extends PhysicsEntity
	{		
		public function Enemy() 
		{
			super(100, 100);
			
			graphic = new Image(Assets.SPRITE_SAMPLE);
			
			mass = 0.1;
			friction = 1;
			maximumSpeed = 5;
			
			setHitbox(42, 21);
			type = "enemy";
			
			addBehavior(new Seek());
		}
		
	}
}
