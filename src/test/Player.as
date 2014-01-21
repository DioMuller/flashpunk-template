package test 
{
	import fplib.base.GameEntity;
	import fplib.math.PhysicsEntity;
	import fplib.math.Vector2D;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Player extends PhysicsEntity
	{
		public var shoot:Sfx = new Sfx(Assets.SE_SHOOT);
		
		
		public function Player()
		{	
			super( 200, 300 );
			
			animation = new Spritemap(Assets.SPRITE_SWORDGUY, 48, 32);
			animation.add("stand", [0, 1, 2, 3, 4, 5], 20, true);
			animation.add("run", [6, 7, 8, 9, 10, 11], 20, true);
			
			gravity = new Vector2D(0, 200);
			mass = 1;
			friction = 0.99;
			
			// TODO: Put this into the GameEntity.
			graphic = animation;
			
			// Here I set the hitbox width/height with the setHitbox function.
			setHitbox(48, 32);
			
			addBehavior(new ControlableBehavior());
		}
		
		override public function update():void 
		{
			FP.camera.x = x - 100;
			FP.camera.y = y - 100;
			
			FP.screen.scaleX = 1.5;
			FP.screen.scaleY = 1.5;
			
			super.update();
		}
	}

}