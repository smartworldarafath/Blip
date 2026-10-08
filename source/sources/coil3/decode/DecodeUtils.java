package coil3.decode;

import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import defpackage.k8;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DecodeUtils {
    public static final long a(int i, int i2, Size size, Scale scale, Size size2) {
        int i3;
        int i4;
        if (!Intrinsics.a(size, Size.c)) {
            i = c(size.a, scale);
            i2 = c(size.b, scale);
        }
        Dimension dimension = size2.a;
        Dimension dimension2 = size2.b;
        if ((dimension instanceof Dimension.Pixels) && i != Integer.MIN_VALUE && i != Integer.MAX_VALUE && i > (i4 = ((Dimension.Pixels) dimension).a)) {
            i = i4;
        }
        if ((dimension2 instanceof Dimension.Pixels) && i2 != Integer.MIN_VALUE && i2 != Integer.MAX_VALUE && i2 > (i3 = ((Dimension.Pixels) dimension2).a)) {
            i2 = i3;
        }
        return (i2 & 4294967295L) | (i << 32);
    }

    public static final double b(int i, int i2, int i3, int i4, Scale scale, Size size) {
        double max;
        double d = i;
        double d2 = i3 / d;
        double d3 = i2;
        double d4 = i4 / d3;
        int ordinal = scale.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                max = Math.min(d2, d4);
            } else {
                k8.e();
                return 0.0d;
            }
        } else {
            max = Math.max(d2, d4);
        }
        if (size.a instanceof Dimension.Pixels) {
            double d5 = ((Dimension.Pixels) r9).a / d;
            if (max > d5) {
                max = d5;
            }
        }
        if (size.b instanceof Dimension.Pixels) {
            double d6 = ((Dimension.Pixels) r9).a / d3;
            if (max > d6) {
                return d6;
            }
        }
        return max;
    }

    public static int c(Dimension dimension, Scale scale) {
        if (dimension instanceof Dimension.Pixels) {
            return ((Dimension.Pixels) dimension).a;
        }
        int ordinal = scale.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return Integer.MAX_VALUE;
            }
            k8.e();
            return 0;
        }
        return Integer.MIN_VALUE;
    }
}
