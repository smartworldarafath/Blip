package androidx.compose.ui.graphics.vector;

import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PathNode {
    public final boolean a;
    public final boolean b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ArcTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final boolean f;
        public final boolean g;
        public final float h;
        public final float i;

        public ArcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            super(3);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = z;
            this.g = z2;
            this.h = f4;
            this.i = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ArcTo)) {
                return false;
            }
            ArcTo arcTo = (ArcTo) obj;
            if (Float.compare(this.c, arcTo.c) == 0 && Float.compare(this.d, arcTo.d) == 0 && Float.compare(this.e, arcTo.e) == 0 && this.f == arcTo.f && this.g == arcTo.g && Float.compare(this.h, arcTo.h) == 0 && Float.compare(this.i, arcTo.i) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.i) + q.a(this.h, jb.b(jb.b(q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31), 31, this.f), 31, this.g), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("ArcTo(horizontalEllipseRadius=", this.c, ", verticalEllipseRadius=", this.d, ", theta=");
            n.append(this.e);
            n.append(", isMoreThanHalf=");
            n.append(this.f);
            n.append(", isPositiveArc=");
            n.append(this.g);
            n.append(", arcStartX=");
            n.append(this.h);
            n.append(", arcStartY=");
            n.append(this.i);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Close extends PathNode {
        public static final Close c = new PathNode(3);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CurveTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final float f;
        public final float g;
        public final float h;

        public CurveTo(float f, float f2, float f3, float f4, float f5, float f6) {
            super(2);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
            this.g = f5;
            this.h = f6;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CurveTo)) {
                return false;
            }
            CurveTo curveTo = (CurveTo) obj;
            if (Float.compare(this.c, curveTo.c) == 0 && Float.compare(this.d, curveTo.d) == 0 && Float.compare(this.e, curveTo.e) == 0 && Float.compare(this.f, curveTo.f) == 0 && Float.compare(this.g, curveTo.g) == 0 && Float.compare(this.h, curveTo.h) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.h) + q.a(this.g, q.a(this.f, q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31), 31), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("CurveTo(x1=", this.c, ", y1=", this.d, ", x2=");
            n.append(this.e);
            n.append(", y2=");
            n.append(this.f);
            n.append(", x3=");
            n.append(this.g);
            n.append(", y3=");
            n.append(this.h);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class HorizontalTo extends PathNode {
        public final float c;

        public HorizontalTo(float f) {
            super(3);
            this.c = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof HorizontalTo) && Float.compare(this.c, ((HorizontalTo) obj).c) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.c);
        }

        public final String toString() {
            return "HorizontalTo(x=" + this.c + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LineTo extends PathNode {
        public final float c;
        public final float d;

        public LineTo(float f, float f2) {
            super(3);
            this.c = f;
            this.d = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LineTo)) {
                return false;
            }
            LineTo lineTo = (LineTo) obj;
            if (Float.compare(this.c, lineTo.c) == 0 && Float.compare(this.d, lineTo.d) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.c) * 31);
        }

        public final String toString() {
            return "LineTo(x=" + this.c + ", y=" + this.d + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MoveTo extends PathNode {
        public final float c;
        public final float d;

        public MoveTo(float f, float f2) {
            super(3);
            this.c = f;
            this.d = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MoveTo)) {
                return false;
            }
            MoveTo moveTo = (MoveTo) obj;
            if (Float.compare(this.c, moveTo.c) == 0 && Float.compare(this.d, moveTo.d) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.c) * 31);
        }

        public final String toString() {
            return "MoveTo(x=" + this.c + ", y=" + this.d + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class QuadTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final float f;

        public QuadTo(float f, float f2, float f3, float f4) {
            super(1);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof QuadTo)) {
                return false;
            }
            QuadTo quadTo = (QuadTo) obj;
            if (Float.compare(this.c, quadTo.c) == 0 && Float.compare(this.d, quadTo.d) == 0 && Float.compare(this.e, quadTo.e) == 0 && Float.compare(this.f, quadTo.f) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.f) + q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("QuadTo(x1=", this.c, ", y1=", this.d, ", x2=");
            n.append(this.e);
            n.append(", y2=");
            n.append(this.f);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReflectiveCurveTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final float f;

        public ReflectiveCurveTo(float f, float f2, float f3, float f4) {
            super(2);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveCurveTo)) {
                return false;
            }
            ReflectiveCurveTo reflectiveCurveTo = (ReflectiveCurveTo) obj;
            if (Float.compare(this.c, reflectiveCurveTo.c) == 0 && Float.compare(this.d, reflectiveCurveTo.d) == 0 && Float.compare(this.e, reflectiveCurveTo.e) == 0 && Float.compare(this.f, reflectiveCurveTo.f) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.f) + q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("ReflectiveCurveTo(x1=", this.c, ", y1=", this.d, ", x2=");
            n.append(this.e);
            n.append(", y2=");
            n.append(this.f);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReflectiveQuadTo extends PathNode {
        public final float c;
        public final float d;

        public ReflectiveQuadTo(float f, float f2) {
            super(1);
            this.c = f;
            this.d = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveQuadTo)) {
                return false;
            }
            ReflectiveQuadTo reflectiveQuadTo = (ReflectiveQuadTo) obj;
            if (Float.compare(this.c, reflectiveQuadTo.c) == 0 && Float.compare(this.d, reflectiveQuadTo.d) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.c) * 31);
        }

        public final String toString() {
            return "ReflectiveQuadTo(x=" + this.c + ", y=" + this.d + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeArcTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final boolean f;
        public final boolean g;
        public final float h;
        public final float i;

        public RelativeArcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            super(3);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = z;
            this.g = z2;
            this.h = f4;
            this.i = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeArcTo)) {
                return false;
            }
            RelativeArcTo relativeArcTo = (RelativeArcTo) obj;
            if (Float.compare(this.c, relativeArcTo.c) == 0 && Float.compare(this.d, relativeArcTo.d) == 0 && Float.compare(this.e, relativeArcTo.e) == 0 && this.f == relativeArcTo.f && this.g == relativeArcTo.g && Float.compare(this.h, relativeArcTo.h) == 0 && Float.compare(this.i, relativeArcTo.i) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.i) + q.a(this.h, jb.b(jb.b(q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31), 31, this.f), 31, this.g), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("RelativeArcTo(horizontalEllipseRadius=", this.c, ", verticalEllipseRadius=", this.d, ", theta=");
            n.append(this.e);
            n.append(", isMoreThanHalf=");
            n.append(this.f);
            n.append(", isPositiveArc=");
            n.append(this.g);
            n.append(", arcStartDx=");
            n.append(this.h);
            n.append(", arcStartDy=");
            n.append(this.i);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeCurveTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final float f;
        public final float g;
        public final float h;

        public RelativeCurveTo(float f, float f2, float f3, float f4, float f5, float f6) {
            super(2);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
            this.g = f5;
            this.h = f6;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeCurveTo)) {
                return false;
            }
            RelativeCurveTo relativeCurveTo = (RelativeCurveTo) obj;
            if (Float.compare(this.c, relativeCurveTo.c) == 0 && Float.compare(this.d, relativeCurveTo.d) == 0 && Float.compare(this.e, relativeCurveTo.e) == 0 && Float.compare(this.f, relativeCurveTo.f) == 0 && Float.compare(this.g, relativeCurveTo.g) == 0 && Float.compare(this.h, relativeCurveTo.h) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.h) + q.a(this.g, q.a(this.f, q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31), 31), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("RelativeCurveTo(dx1=", this.c, ", dy1=", this.d, ", dx2=");
            n.append(this.e);
            n.append(", dy2=");
            n.append(this.f);
            n.append(", dx3=");
            n.append(this.g);
            n.append(", dy3=");
            n.append(this.h);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeHorizontalTo extends PathNode {
        public final float c;

        public RelativeHorizontalTo(float f) {
            super(3);
            this.c = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof RelativeHorizontalTo) && Float.compare(this.c, ((RelativeHorizontalTo) obj).c) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.c);
        }

        public final String toString() {
            return "RelativeHorizontalTo(dx=" + this.c + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeLineTo extends PathNode {
        public final float c;
        public final float d;

        public RelativeLineTo(float f, float f2) {
            super(3);
            this.c = f;
            this.d = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeLineTo)) {
                return false;
            }
            RelativeLineTo relativeLineTo = (RelativeLineTo) obj;
            if (Float.compare(this.c, relativeLineTo.c) == 0 && Float.compare(this.d, relativeLineTo.d) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.c) * 31);
        }

        public final String toString() {
            return "RelativeLineTo(dx=" + this.c + ", dy=" + this.d + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeMoveTo extends PathNode {
        public final float c;
        public final float d;

        public RelativeMoveTo(float f, float f2) {
            super(3);
            this.c = f;
            this.d = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeMoveTo)) {
                return false;
            }
            RelativeMoveTo relativeMoveTo = (RelativeMoveTo) obj;
            if (Float.compare(this.c, relativeMoveTo.c) == 0 && Float.compare(this.d, relativeMoveTo.d) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.c) * 31);
        }

        public final String toString() {
            return "RelativeMoveTo(dx=" + this.c + ", dy=" + this.d + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeQuadTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final float f;

        public RelativeQuadTo(float f, float f2, float f3, float f4) {
            super(1);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeQuadTo)) {
                return false;
            }
            RelativeQuadTo relativeQuadTo = (RelativeQuadTo) obj;
            if (Float.compare(this.c, relativeQuadTo.c) == 0 && Float.compare(this.d, relativeQuadTo.d) == 0 && Float.compare(this.e, relativeQuadTo.e) == 0 && Float.compare(this.f, relativeQuadTo.f) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.f) + q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("RelativeQuadTo(dx1=", this.c, ", dy1=", this.d, ", dx2=");
            n.append(this.e);
            n.append(", dy2=");
            n.append(this.f);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeReflectiveCurveTo extends PathNode {
        public final float c;
        public final float d;
        public final float e;
        public final float f;

        public RelativeReflectiveCurveTo(float f, float f2, float f3, float f4) {
            super(2);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveCurveTo)) {
                return false;
            }
            RelativeReflectiveCurveTo relativeReflectiveCurveTo = (RelativeReflectiveCurveTo) obj;
            if (Float.compare(this.c, relativeReflectiveCurveTo.c) == 0 && Float.compare(this.d, relativeReflectiveCurveTo.d) == 0 && Float.compare(this.e, relativeReflectiveCurveTo.e) == 0 && Float.compare(this.f, relativeReflectiveCurveTo.f) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.f) + q.a(this.e, q.a(this.d, Float.hashCode(this.c) * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder n = q.n("RelativeReflectiveCurveTo(dx1=", this.c, ", dy1=", this.d, ", dx2=");
            n.append(this.e);
            n.append(", dy2=");
            n.append(this.f);
            n.append(")");
            return n.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeReflectiveQuadTo extends PathNode {
        public final float c;
        public final float d;

        public RelativeReflectiveQuadTo(float f, float f2) {
            super(1);
            this.c = f;
            this.d = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveQuadTo)) {
                return false;
            }
            RelativeReflectiveQuadTo relativeReflectiveQuadTo = (RelativeReflectiveQuadTo) obj;
            if (Float.compare(this.c, relativeReflectiveQuadTo.c) == 0 && Float.compare(this.d, relativeReflectiveQuadTo.d) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + (Float.hashCode(this.c) * 31);
        }

        public final String toString() {
            return "RelativeReflectiveQuadTo(dx=" + this.c + ", dy=" + this.d + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RelativeVerticalTo extends PathNode {
        public final float c;

        public RelativeVerticalTo(float f) {
            super(3);
            this.c = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof RelativeVerticalTo) && Float.compare(this.c, ((RelativeVerticalTo) obj).c) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.c);
        }

        public final String toString() {
            return "RelativeVerticalTo(dy=" + this.c + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VerticalTo extends PathNode {
        public final float c;

        public VerticalTo(float f) {
            super(3);
            this.c = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof VerticalTo) && Float.compare(this.c, ((VerticalTo) obj).c) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.c);
        }

        public final String toString() {
            return "VerticalTo(y=" + this.c + ")";
        }
    }

    public PathNode(int i) {
        boolean z;
        if ((i & 1) != 0) {
            z = false;
        } else {
            z = true;
        }
        boolean z2 = (i & 2) == 0;
        this.a = z;
        this.b = z2;
    }
}
