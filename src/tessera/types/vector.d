module tessera.types.vector;
import tessera.types;

immutable:
struct Vector2(T) {
	T[Axis2] data;
	@property T x() => data[Axis2.X];
	@property T y() => data[Axis2.Y];

	this(T x, T y) {
		data = [
			Axis2.X: x,
			Axis2.Y: y,
		];
	}

	Vector2!T opBinary(string op)(Vector2!T other) {
		static if (op == "+") return Vector2!T(x + other.x, y + other.y);
		else static if (op == "-") return Vector2!T(x - other.x, y - other.y);
		else static if (op == "*") return Vector2!T(x * other.x, y * other.y);
		else static if (op == "/") return Vector2!T(x / other.x, y / other.y);
		else static assert(false, "Unsupported operator: " ~ op);
	}

	T getAxis(Axis2 axis2) {
		return data[axis2];
	}
}
