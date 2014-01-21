package fplib.math 
{
	import flash.utils.Dictionary;
	import fplib.base.GameEntity;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class PhysicsEntity extends GameEntity
	{
		//{ region Attributes
		public var momentum : Vector2D;
		public var gravity : Vector2D;
		public var constantForces : Dictionary;
		public var forces : Vector.<Vector2D>;
		public var mass : Number;
		public var rotate : Boolean;
		public var friction : Number;
		//} endregion Attributes
		
		//{ region Constructor
		public function PhysicsEntity( x : Number, y : Number ) 
		{
			super(x, y);
			
			forces = new Vector.<Vector2D>();
			constantForces = new Dictionary();
			
			momentum = Vector2D.ZERO;
			gravity = Vector2D.ZERO;
			
			friction = 1;
			mass = 1;
		}
		//} endregion Constructor
		
		//{ region Methods
		override public function update():void 
		{
			var forces : Vector2D = Vector2D.ZERO;
			var instantForces : Vector2D = Vector2D.ZERO;
			var secs : Number = FP.elapsed;
			
			//{ region Calculate Forces
			var force : Vector2D;
			
			for each( force in constantForces )
			{
				forces = Vector2D.add(forces, force);
			}
			
			while ( this.forces.length != 0 )
			{
				force = this.forces.pop();
				instantForces = Vector2D.add(instantForces, Vector2D.divide( force, mass ));
			}
			//} endregion Calculate Forces
			
			var acceleration : Vector2D = Vector2D.add( Vector2D.divide( forces, mass ), gravity );
			var accelSecs : Vector2D = Vector2D.multiply( acceleration, secs );
			
			position = Vector2D.add( position, Vector2D.multiply( Vector2D.add( momentum, Vector2D.divide( accelSecs, 2 ) ), secs ));
			momentum = Vector2D.add( momentum, Vector2D.add( accelSecs, instantForces ) );
			momentum = Vector2D.multiply( momentum, friction );
			
			if ( rotate )
			{
				// TODO: Rotation.
			}
			
			super.update();
		}
		//} endregion Methods
	}

}