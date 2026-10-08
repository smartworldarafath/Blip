package androidx.compose.ui.unit;

import defpackage.f7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Constraints {
    public final long a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static long a(int i, int i2, int i3, int i4) {
            int min;
            int i5;
            int i6 = 262142;
            int min2 = Math.min(i3, 262142);
            int i7 = Integer.MAX_VALUE;
            if (i4 == Integer.MAX_VALUE) {
                min = Integer.MAX_VALUE;
            } else {
                min = Math.min(i4, 262142);
            }
            if (min == Integer.MAX_VALUE) {
                i5 = min2;
            } else {
                i5 = min;
            }
            if (i5 >= 8191) {
                if (i5 < 32767) {
                    i6 = 65534;
                } else if (i5 < 65535) {
                    i6 = 32766;
                } else if (i5 < 262143) {
                    i6 = 8190;
                } else {
                    ConstraintsKt.k(i5);
                    f7.h();
                    return 0L;
                }
            }
            if (i2 != Integer.MAX_VALUE) {
                i7 = Math.min(i6, i2);
            }
            return ConstraintsKt.a(Math.min(i6, i), i7, min2, min);
        }

        public static long b(int i, int i2, int i3, int i4) {
            int min;
            int i5;
            int i6 = 262142;
            int min2 = Math.min(i, 262142);
            int i7 = Integer.MAX_VALUE;
            if (i2 == Integer.MAX_VALUE) {
                min = Integer.MAX_VALUE;
            } else {
                min = Math.min(i2, 262142);
            }
            if (min == Integer.MAX_VALUE) {
                i5 = min2;
            } else {
                i5 = min;
            }
            if (i5 >= 8191) {
                if (i5 < 32767) {
                    i6 = 65534;
                } else if (i5 < 65535) {
                    i6 = 32766;
                } else if (i5 < 262143) {
                    i6 = 8190;
                } else {
                    ConstraintsKt.k(i5);
                    f7.h();
                    return 0L;
                }
            }
            if (i4 != Integer.MAX_VALUE) {
                i7 = Math.min(i6, i4);
            }
            return ConstraintsKt.a(min2, min, Math.min(i6, i3), i7);
        }

        public static long c(int i, int i2) {
            boolean z;
            boolean z2 = false;
            if (i >= 0) {
                z = true;
            } else {
                z = false;
            }
            if (i2 >= 0) {
                z2 = true;
            }
            if (!(z2 & z)) {
                InlineClassHelperKt.a("width and height must be >= 0");
            }
            return ConstraintsKt.h(i, i, i2, i2);
        }
    }

    public /* synthetic */ Constraints(long j) {
        this.a = j;
    }

    public static long a(long j, int i, int i2, int i3, int i4, int i5) {
        if ((i5 & 1) != 0) {
            i = j(j);
        }
        if ((i5 & 2) != 0) {
            i2 = h(j);
        }
        if ((i5 & 4) != 0) {
            i3 = i(j);
        }
        if ((i5 & 8) != 0) {
            i4 = g(j);
        }
        if (i2 < i || i4 < i3 || i < 0 || i3 < 0) {
            InlineClassHelperKt.a("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
        }
        return ConstraintsKt.h(i, i2, i3, i4);
    }

    public static final boolean b(long j, long j2) {
        if (j == j2) {
            return true;
        }
        return false;
    }

    public static final boolean c(long j) {
        int i = (int) (3 & j);
        int i2 = (((i & 2) >> 1) * 3) + ((i & 1) << 1);
        if ((((int) (j >> (i2 + 46))) & ((1 << (18 - i2)) - 1)) != 0) {
            return true;
        }
        return false;
    }

    public static final boolean d(long j) {
        int i = (int) (3 & j);
        if ((((int) (j >> 33)) & ((1 << (((((i & 2) >> 1) * 3) + ((i & 1) << 1)) + 13)) - 1)) != 0) {
            return true;
        }
        return false;
    }

    public static final boolean e(long j) {
        int i;
        int i2 = (int) (3 & j);
        int i3 = (((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1);
        int i4 = (1 << (18 - i3)) - 1;
        int i5 = ((int) (j >> (i3 + 15))) & i4;
        int i6 = ((int) (j >> (i3 + 46))) & i4;
        if (i6 == 0) {
            i = Integer.MAX_VALUE;
        } else {
            i = i6 - 1;
        }
        if (i5 == i) {
            return true;
        }
        return false;
    }

    public static final boolean f(long j) {
        int i;
        int i2 = (int) (3 & j);
        int i3 = (1 << (((((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1)) + 13)) - 1;
        int i4 = ((int) (j >> 2)) & i3;
        int i5 = ((int) (j >> 33)) & i3;
        if (i5 == 0) {
            i = Integer.MAX_VALUE;
        } else {
            i = i5 - 1;
        }
        if (i4 == i) {
            return true;
        }
        return false;
    }

    public static final int g(long j) {
        int i = (int) (3 & j);
        int i2 = (((i & 2) >> 1) * 3) + ((i & 1) << 1);
        int i3 = ((int) (j >> (i2 + 46))) & ((1 << (18 - i2)) - 1);
        if (i3 == 0) {
            return Integer.MAX_VALUE;
        }
        return i3 - 1;
    }

    public static final int h(long j) {
        int i = (int) (3 & j);
        int i2 = (int) (j >> 33);
        int i3 = i2 & ((1 << (((((i & 2) >> 1) * 3) + ((i & 1) << 1)) + 13)) - 1);
        if (i3 == 0) {
            return Integer.MAX_VALUE;
        }
        return i3 - 1;
    }

    public static final int i(long j) {
        int i = (int) (3 & j);
        int i2 = (((i & 2) >> 1) * 3) + ((i & 1) << 1);
        return ((int) (j >> (i2 + 15))) & ((1 << (18 - i2)) - 1);
    }

    public static final int j(long j) {
        int i = (int) (3 & j);
        return ((int) (j >> 2)) & ((1 << (((((i & 2) >> 1) * 3) + ((i & 1) << 1)) + 13)) - 1);
    }

    public static final boolean k(long j) {
        boolean z;
        int i = (int) (3 & j);
        boolean z2 = true;
        int i2 = (((i & 2) >> 1) * 3) + ((i & 1) << 1);
        int i3 = (((int) (j >> 33)) & ((1 << (i2 + 13)) - 1)) - 1;
        int i4 = (((int) (j >> (i2 + 46))) & ((1 << (18 - i2)) - 1)) - 1;
        if (i3 == 0) {
            z = true;
        } else {
            z = false;
        }
        if (i4 != 0) {
            z2 = false;
        }
        return z | z2;
    }

    public static String l(long j) {
        String valueOf;
        int h = h(j);
        String str = "Infinity";
        if (h == Integer.MAX_VALUE) {
            valueOf = "Infinity";
        } else {
            valueOf = String.valueOf(h);
        }
        int g = g(j);
        if (g != Integer.MAX_VALUE) {
            str = String.valueOf(g);
        }
        return "Constraints(minWidth = " + j(j) + ", maxWidth = " + valueOf + ", minHeight = " + i(j) + ", maxHeight = " + str + ")";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Constraints) {
            if (this.a != ((Constraints) obj).a) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return l(this.a);
    }
}
