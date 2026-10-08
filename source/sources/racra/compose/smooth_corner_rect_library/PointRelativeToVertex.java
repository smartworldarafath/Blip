package racra.compose.smooth_corner_rect_library;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointRelativeToVertex {
    public final float a;
    public final float b;

    public PointRelativeToVertex(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointRelativeToVertex)) {
            return false;
        }
        PointRelativeToVertex pointRelativeToVertex = (PointRelativeToVertex) obj;
        if (Float.valueOf(this.a).equals(Float.valueOf(pointRelativeToVertex.a)) && Float.valueOf(this.b).equals(Float.valueOf(pointRelativeToVertex.b))) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "PointRelativeToVertex(distanceToFurthestSide=" + this.a + ", distanceToClosestSide=" + this.b + ')';
    }
}
