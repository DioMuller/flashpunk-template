package com.diogomuller.test 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class TestEntity extends Entity
	{
		[Embed(source = "../../../assets/sample-sprite.png")] private const PLAYER : Class;
		
		public function TestEntity() 
		{
			graphic = new Image(PLAYER);
			
			Input.define("Jump", Key.SPACE, Key.Z, Key.N);
			Input.define("Shoot", Key.CONTROL, Key.X, Key.M);
			Input.define("Front", Key.RIGHT, Key.D);
			Input.define("Back", Key.LEFT, Key.A);
			Input.define("Down", Key.DOWN, Key.S);
			Input.define("Up", Key.UP, Key.W);
		}
		
		override public function update():void
		{
			/*
			if (Input.check("Back")) { x -= 5; }
			if (Input.check("Front")) { x += 5; }
			if (Input.check("Up")) { y -= 5; }
			if (Input.check("Down")) { y += 5; }
			*/
			
			// Assigns the Entity's position to that of the mouse (relative to the Camera).
			x = Input.mouseX;
			y = Input.mouseY;
			// Assigns the Entity's position to that of the mouse (relative to the World).
			x = FP.world.mouseX;
			y = FP.world.mouseY;
		}
		
	}

}