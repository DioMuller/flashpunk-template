package test 
{
	/**
	 * ...
	 * @author Diogo Muller
	 */
	public class Assets 
	{
		/* Images */
		[Embed(source = "../../assets/images/background.png")]  public static const IMAGE_BACKGROUND : Class;
		
		/* Maps */
		[Embed(source="../../assets/maps/level0.oel", mimeType="application/octet-stream")] public static const LEVEL_00 : Class;
		[Embed(source="../../assets/maps/level1.oel", mimeType="application/octet-stream")] public static const LEVEL_01 : Class;
	
		/* Sounds */
		[Embed(source="../../assets/sounds/Shoot.mp3")]  public static const SE_SHOOT : Class;
		
		/* Sprites */
		[Embed(source = "../../assets/sprites/sample-sprite.png")] public static const SPRITE_SAMPLE : Class;
		[Embed(source = "../../assets/sprites/swordguy.png")] public static const SPRITE_SWORDGUY : Class;
		
		/* Tilesets */
		[Embed(source = "../../assets/tilesets/terrain_tileset.png")] public static const TILESET_TERRAIN : Class;
	}

}