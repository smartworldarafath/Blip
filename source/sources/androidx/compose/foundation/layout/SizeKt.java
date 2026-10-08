package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SizeKt {
    public static final FillElement a = new FillElement(Direction.k, 1.0f);
    public static final FillElement b;
    public static final FillElement c;
    public static final WrapContentElement d;
    public static final WrapContentElement e;
    public static final WrapContentElement f;
    public static final WrapContentElement g;

    static {
        Direction direction = Direction.j;
        b = new FillElement(direction, 1.0f);
        Direction direction2 = Direction.l;
        c = new FillElement(direction2, 1.0f);
        int i = 27;
        BiasAlignment.Vertical vertical = Alignment.Companion.k;
        d = new WrapContentElement(direction, new defpackage.d(i, vertical), vertical);
        BiasAlignment.Vertical vertical2 = Alignment.Companion.j;
        e = new WrapContentElement(direction, new defpackage.d(i, vertical2), vertical2);
        int i2 = 28;
        BiasAlignment biasAlignment = Alignment.Companion.e;
        f = new WrapContentElement(direction2, new defpackage.d(i2, biasAlignment), biasAlignment);
        BiasAlignment biasAlignment2 = Alignment.Companion.a;
        g = new WrapContentElement(direction2, new defpackage.d(i2, biasAlignment2), biasAlignment2);
    }

    public static final Modifier a(Modifier modifier, float f2, float f3) {
        return modifier.l(new UnspecifiedConstraintsElement(f2, f3));
    }

    public static final Modifier b(Modifier modifier, float f2) {
        FillElement fillElement;
        if (f2 == 1.0f) {
            fillElement = b;
        } else {
            fillElement = new FillElement(Direction.j, f2);
        }
        return modifier.l(fillElement);
    }

    public static final Modifier c(Modifier modifier, float f2) {
        FillElement fillElement;
        if (f2 == 1.0f) {
            fillElement = c;
        } else {
            fillElement = new FillElement(Direction.l, f2);
        }
        return modifier.l(fillElement);
    }

    public static final Modifier d(Modifier modifier, float f2) {
        FillElement fillElement;
        if (f2 == 1.0f) {
            fillElement = a;
        } else {
            fillElement = new FillElement(Direction.k, f2);
        }
        return modifier.l(fillElement);
    }

    public static final Modifier e(Modifier modifier, float f2) {
        return modifier.l(new SizeElement(0.0f, f2, 0.0f, f2, true, 5));
    }

    public static final Modifier f(Modifier modifier, float f2, float f3) {
        return modifier.l(new SizeElement(0.0f, f2, 0.0f, f3, true, 5));
    }

    public static final Modifier g(Modifier modifier) {
        return modifier.l(new SizeElement(20.0f, 20.0f, 20.0f, 20.0f, false));
    }

    public static final Modifier h(Modifier modifier) {
        return modifier.l(new SizeElement(34.0f, 20.0f, 34.0f, 20.0f, false));
    }

    public static Modifier i(Modifier modifier, float f2, float f3, float f4, float f5, int i) {
        float f6;
        float f7;
        float f8;
        if ((i & 2) != 0) {
            f6 = Float.NaN;
        } else {
            f6 = f3;
        }
        if ((i & 4) != 0) {
            f7 = Float.NaN;
        } else {
            f7 = f4;
        }
        if ((i & 8) != 0) {
            f8 = Float.NaN;
        } else {
            f8 = f5;
        }
        return modifier.l(new SizeElement(f2, f6, f7, f8, false));
    }

    public static final Modifier j(float f2) {
        return new SizeElement(f2, 0.0f, f2, 0.0f, false, 10);
    }

    public static final Modifier k(Modifier modifier, float f2) {
        return modifier.l(new SizeElement(f2, f2, f2, f2, true));
    }

    public static final Modifier l(Modifier modifier, float f2, float f3) {
        return modifier.l(new SizeElement(f2, f3, f2, f3, true));
    }

    public static final Modifier m(Modifier modifier, float f2, float f3, float f4, float f5) {
        return modifier.l(new SizeElement(f2, f3, f4, f5, true));
    }

    public static final Modifier n(float f2) {
        return new SizeElement(f2, 0.0f, f2, 0.0f, true, 10);
    }

    public static Modifier o() {
        return new SizeElement(144.0f, 0.0f, Float.NaN, 0.0f, true, 10);
    }

    public static Modifier p(Modifier modifier) {
        WrapContentElement wrapContentElement;
        BiasAlignment.Vertical vertical = Alignment.Companion.k;
        if (Intrinsics.a(vertical, vertical)) {
            wrapContentElement = d;
        } else if (Intrinsics.a(vertical, Alignment.Companion.j)) {
            wrapContentElement = e;
        } else {
            wrapContentElement = new WrapContentElement(Direction.j, new defpackage.d(27, vertical), vertical);
        }
        return modifier.l(wrapContentElement);
    }

    public static Modifier q(Modifier modifier) {
        WrapContentElement wrapContentElement;
        BiasAlignment biasAlignment = Alignment.Companion.e;
        if (biasAlignment.equals(biasAlignment)) {
            wrapContentElement = f;
        } else if (biasAlignment.equals(Alignment.Companion.a)) {
            wrapContentElement = g;
        } else {
            wrapContentElement = new WrapContentElement(Direction.l, new defpackage.d(28, biasAlignment), biasAlignment);
        }
        return modifier.l(wrapContentElement);
    }
}
