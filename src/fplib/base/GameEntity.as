package fplib.base 
{
	import fplib.math.Vector2D;
	import net.flashpunk.Entity;
	/**
	 * Represents an Entity with Behaviors.
	 * @author Diogo Muller
	 */
	public class GameEntity extends Entity
	{
		//{ region Public Attributes
		/**
		 * Current position.
		 */
		public var position : Vector2D;
		//} endregion Public Attributes
		
		//{ region Attributes
		/**
		 * Entity behaviors.
		 */
		public var _behaviors : Vector.<Behavior>
		//} region Attributes
		
		//{ region Constructor
		public function GameEntity( x:Number = 0, y:Number = 0 ) 
		{
			position = new Vector2D(x, y);
			_behaviors = new Vector.<Behavior>();
		}
		//} region Constructor
		
		//{ region Methods
		override public function update():void 
		{
			//{ region Update Behaviors
			for each ( var b : Behavior in _behaviors )
			{
				b.update();
			}
			//} endregion Update Behaviors
			
			//{ region Update Position
			/* Since I can't hide x and y, I'll update them or position if the other was changed. */
			if ( position.HasChanged )
			{
				x = position.X;
				y = position.Y;
			}
			else
			{
				position.X = x;
				position.Y = y;
			}
			
			position.update();
			//} endregion Update Position
			
			super.update();
		}
		
		/**
		 * Adds behavior to the Entity.
		 * @param	b Behavior to be added.
		 */
		public function addBehavior( b : Behavior ) : void
		{
			b.parent = this;
			_behaviors.push(b);
		}
		//} endregion Methods
		
	}

}