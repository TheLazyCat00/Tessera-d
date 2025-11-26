module tessera.types.axis;

immutable:
struct Axis2 {
	private int id;

	Axis2 getOpposite(){
		return opposites[this];
	}

	static immutable X = Axis2(0);
	static immutable Y = Axis2(1);
}

private Axis2[Axis2] opposites = [
	Axis2.X: Axis2.Y,
	Axis2.Y: Axis2.X,
];
