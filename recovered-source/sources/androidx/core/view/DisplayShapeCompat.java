package androidx.core.view;

import defpackage.jb;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DisplayShapeCompat {
    public final ImplBase a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ImplBase {
        public final String a;
        public final int b;
        public final int c;

        public ImplBase(String str, int i, int i2) {
            this.a = str;
            this.b = i;
            this.c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ImplBase) {
                ImplBase implBase = (ImplBase) obj;
                if (this.a.equals(implBase.a) && this.b == implBase.b && this.c == implBase.c) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            Integer valueOf = Integer.valueOf(this.b);
            Integer valueOf2 = Integer.valueOf(this.c);
            Float valueOf3 = Float.valueOf(1.0f);
            return Objects.hash(this.a, valueOf, valueOf2, valueOf3, 0, 0, 0, valueOf3);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("DisplayShapeCompat{ spec=");
            sb.append(Integer.valueOf(this.a.hashCode()));
            sb.append(" displayWidth=");
            sb.append(this.b);
            sb.append(" displayHeight=");
            return jb.i(sb, this.c, " physicalPixelDisplaySizeRatio=1.0 rotation=0 offsetX=0 offsetY=0 scale=1.0}");
        }
    }

    static {
        new DisplayShapeCompat("", 0, 0);
    }

    public DisplayShapeCompat(String str, int i, int i2) {
        this.a = new ImplBase(str, i, i2);
    }

    public static DisplayShapeCompat a(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        String sb;
        if (z) {
            int i7 = i / 2;
            int i8 = i2 / 2;
            StringBuilder k = jb.k("M0,", i8, " A", i7, ",");
            k.append(i8);
            k.append(" 0 1,1 ");
            k.append(i);
            k.append(",");
            k.append(i8);
            k.append(" A");
            k.append(i7);
            k.append(",");
            k.append(i8);
            k.append(" 0 1,1 0,");
            k.append(i8);
            k.append(" Z");
            sb = k.toString();
        } else {
            StringBuilder sb2 = new StringBuilder("M ");
            int min = Math.min(i / 2, i2 / 2);
            int min2 = Math.min(min, i3);
            int min3 = Math.min(min, i4);
            int min4 = Math.min(min, i5);
            int min5 = Math.min(min, i6);
            sb2.append(min2);
            sb2.append(",0 L ");
            sb2.append(i - min3);
            sb2.append(",0");
            if (min3 > 0) {
                sb2.append(" A ");
                sb2.append(min3);
                sb2.append(",");
                sb2.append(min3);
                sb2.append(" 0 0,1 ");
                sb2.append(i);
                sb2.append(",");
                sb2.append(min3);
            }
            sb2.append(" L ");
            sb2.append(i);
            sb2.append(",");
            sb2.append(i2 - min4);
            if (min4 > 0) {
                sb2.append(" A ");
                sb2.append(min4);
                sb2.append(",");
                sb2.append(min4);
                sb2.append(" 0 0,1 ");
                sb2.append(i - min4);
                sb2.append(",");
                sb2.append(i2);
            }
            sb2.append(" L ");
            sb2.append(min5);
            sb2.append(",");
            sb2.append(i2);
            if (min5 > 0) {
                sb2.append(" A ");
                sb2.append(min5);
                sb2.append(",");
                sb2.append(min5);
                sb2.append(" 0 0,1 0,");
                sb2.append(i2 - min5);
            }
            if (min2 > 0) {
                sb2.append(" L 0,");
                sb2.append(min2);
                sb2.append(" A ");
                sb2.append(min2);
                sb2.append(",");
                sb2.append(min2);
                sb2.append(" 0 0,1 ");
                sb2.append(min2);
                sb2.append(",0");
            }
            sb2.append(" Z");
            sb = sb2.toString();
        }
        return new DisplayShapeCompat(sb, i, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayShapeCompat)) {
            return false;
        }
        return this.a.equals(((DisplayShapeCompat) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
