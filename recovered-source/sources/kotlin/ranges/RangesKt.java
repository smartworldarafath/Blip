package kotlin.ranges;

/* loaded from: classes.dex */
public abstract class RangesKt extends RangesKt___RangesKt {
    public static double b(double d, double d2, double d3) {
        if (d2 <= d3) {
            if (d < d2) {
                return d2;
            }
            if (d > d3) {
                return d3;
            }
            return d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    public static float c(float f, float f2, float f3) {
        if (f2 <= f3) {
            if (f < f2) {
                return f2;
            }
            if (f > f3) {
                return f3;
            }
            return f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static int d(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i < i2) {
                return i2;
            }
            if (i > i3) {
                return i3;
            }
            return i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static long e(long j, long j2, long j3) {
        if (j2 <= j3) {
            if (j < j2) {
                return j2;
            }
            if (j > j3) {
                return j3;
            }
            return j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    public static Comparable f(Float f, ClosedFloatingPointRange closedFloatingPointRange) {
        closedFloatingPointRange.getClass();
        ClosedFloatRange closedFloatRange = (ClosedFloatRange) closedFloatingPointRange;
        float f2 = closedFloatRange.k;
        float f3 = closedFloatRange.j;
        if (f3 <= f2) {
            if (closedFloatRange.a(f, Float.valueOf(f3)) && !closedFloatRange.a(Float.valueOf(f3), f)) {
                return Float.valueOf(f3);
            }
            if (closedFloatRange.a(Float.valueOf(f2), f) && !closedFloatRange.a(f, Float.valueOf(f2))) {
                return Float.valueOf(f2);
            }
            return f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + closedFloatingPointRange + '.');
    }

    public static ClosedFloatingPointRange g(float f, float f2) {
        return new ClosedFloatRange(f, f2);
    }

    public static IntProgression h(IntRange intRange, int i) {
        boolean z;
        intRange.getClass();
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        RangesKt__RangesKt.a(z, Integer.valueOf(i));
        int i2 = intRange.j;
        int i3 = intRange.k;
        if (intRange.l <= 0) {
            i = -i;
        }
        return new IntProgression(i2, i3, i);
    }

    public static LongProgression i(LongRange longRange, long j) {
        boolean z;
        longRange.getClass();
        if (j > 0) {
            z = true;
        } else {
            z = false;
        }
        RangesKt__RangesKt.a(z, Long.valueOf(j));
        long j2 = longRange.j;
        long j3 = longRange.k;
        if (longRange.l <= 0) {
            j = -j;
        }
        return new LongProgression(j2, j3, j);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.ranges.IntProgression, kotlin.ranges.IntRange] */
    public static IntRange j(int i, int i2) {
        if (i2 <= Integer.MIN_VALUE) {
            return IntRange.m;
        }
        return new IntProgression(i, i2 - 1, 1);
    }
}
