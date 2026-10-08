package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface GraphicsLayerImpl {
    public static final Companion a = Companion.a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final /* synthetic */ Companion a = new Object();
    }

    void A(float f);

    float B();

    void C(RenderEffect renderEffect);

    float D();

    void E(boolean z);

    float F();

    void G(int i);

    void H(float f);

    void I(long j);

    Matrix J();

    void K(float f);

    float L();

    float M();

    void N(float f);

    int O();

    void P(Canvas canvas);

    float a();

    void b(float f);

    float c();

    void d(float f);

    RenderEffect e();

    void f(float f);

    void g(float f);

    void h(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1);

    void i(Outline outline, long j);

    void j(int i);

    void k();

    int l();

    ColorFilter m();

    void n(float f);

    void o(int i, int i2, long j);

    float p();

    void q(ColorFilter colorFilter);

    default boolean r() {
        return true;
    }

    float s();

    void t(long j);

    long u();

    void v(float f);

    void w(int i, int i2, int i3, int i4);

    float x();

    long y();

    void z(long j);
}
