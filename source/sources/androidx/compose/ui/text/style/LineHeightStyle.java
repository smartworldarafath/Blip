package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LineHeightStyle {
    public static final LineHeightStyle d = new LineHeightStyle(Alignment.c, 17, 0);
    public final float a;
    public final int b;
    public final int c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Alignment {
        public static final float b;
        public static final float c;
        public static final float d;
        public final float a;

        static {
            a(0.0f);
            a(0.5f);
            b = 0.5f;
            a(-1.0f);
            c = -1.0f;
            a(1.0f);
            d = 1.0f;
        }

        public /* synthetic */ Alignment(float f) {
            this.a = f;
        }

        public static void a(float f) {
            if ((0.0f <= f && f <= 1.0f) || f == -1.0f) {
                return;
            }
            InlineClassHelperKt.c("topRatio should be in [0..1] range or -1");
        }

        public static String b(float f) {
            if (f == 0.0f) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (f == b) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (f == c) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (f == d) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + f + ")";
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Alignment) {
                if (Float.compare(this.a, ((Alignment) obj).a) != 0) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.a);
        }

        public final String toString() {
            return b(this.a);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mode {
        public final int a;

        public /* synthetic */ Mode(int i) {
            this.a = i;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Mode) {
                if (this.a != ((Mode) obj).a) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            int i = this.a;
            if (i == 0) {
                return "LineHeightStyle.Mode.Fixed";
            }
            if (i == 1) {
                return "LineHeightStyle.Mode.Minimum";
            }
            if (i == 2) {
                return "LineHeightStyle.Mode.Tight";
            }
            return "Invalid";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Trim {
        public final int a;

        public /* synthetic */ Trim(int i) {
            this.a = i;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Trim) {
                if (this.a != ((Trim) obj).a) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            int i = this.a;
            if (i == 1) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i == 16) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i == 17) {
                return "LineHeightStyle.Trim.Both";
            }
            if (i == 0) {
                return "LineHeightStyle.Trim.None";
            }
            return "Invalid";
        }
    }

    public LineHeightStyle(float f, int i, int i2) {
        this.a = f;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        float f = lineHeightStyle.a;
        float f2 = Alignment.b;
        if (Float.compare(this.a, f) == 0 && this.b == lineHeightStyle.b && this.c == lineHeightStyle.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        float f = Alignment.b;
        return Integer.hashCode(this.c) + q.b(this.b, Float.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        String str;
        String b = Alignment.b(this.a);
        String str2 = "Invalid";
        int i = this.b;
        if (i == 1) {
            str = "LineHeightStyle.Trim.FirstLineTop";
        } else if (i == 16) {
            str = "LineHeightStyle.Trim.LastLineBottom";
        } else if (i == 17) {
            str = "LineHeightStyle.Trim.Both";
        } else if (i != 0) {
            str = "Invalid";
        } else {
            str = "LineHeightStyle.Trim.None";
        }
        int i2 = this.c;
        if (i2 == 0) {
            str2 = "LineHeightStyle.Mode.Fixed";
        } else if (i2 == 1) {
            str2 = "LineHeightStyle.Mode.Minimum";
        } else if (i2 == 2) {
            str2 = "LineHeightStyle.Mode.Tight";
        }
        return q.l(q.o("LineHeightStyle(alignment=", b, ", trim=", str, ",mode="), str2, ")");
    }
}
