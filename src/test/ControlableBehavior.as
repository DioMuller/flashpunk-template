package test 
{
	import fplib.base.Behavior;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class ControlableBehavior extends Behavior
	{
		public var speed:Number = 150;
			
		public function ControlableBehavior()
		{
			Input.define("Jump", Key.SPACE, Key.Z, Key.N);
			Input.define("Shoot", Key.CONTROL, Key.X, Key.M);
			Input.define("Front", Key.RIGHT, Key.D);
			Input.define("Back", Key.LEFT, Key.A);
			Input.define("Down", Key.DOWN, Key.S);
			Input.define("Up", Key.UP, Key.W);
		}
		
		override public function update():void 
		{
			var moving:Boolean = false;
			
			if (Input.check("Back")) { parent.position.X -= (speed * FP.elapsed); moving = true; }
			if (Input.check("Front")) { parent.position.X += (speed * FP.elapsed); moving = true; }
			if (Input.check("Up")) { parent.position.Y -= (speed * FP.elapsed); moving = true; }
			if (Input.check("Down")) { parent.position.Y += (speed * FP.elapsed); moving = true; }
			
			
			if ( moving )
			{
				parent.animation.play("run");
			}
			else
			{
				parent.animation.play("stand");
			}
			/*
			if (Input.pressed("Shoot") )
			{
				shoot.play();
			}
			*/
		}
	}

}