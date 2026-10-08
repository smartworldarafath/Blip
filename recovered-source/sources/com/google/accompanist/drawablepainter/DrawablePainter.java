package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.k8;
import defpackage.r1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawablePainter extends Painter implements RememberObserver {
    public final Drawable o;
    public final MutableState q;
    public final MutableState p = SnapshotStateKt.g(0);
    public final Lazy r = LazyKt.b(new r1(14, this));

    public DrawablePainter(Drawable drawable) {
        this.o = drawable;
        this.q = SnapshotStateKt.g(new Size(DrawablePainterKt.a(drawable)));
        if (drawable.getIntrinsicWidth() >= 0 && drawable.getIntrinsicHeight() >= 0) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
        b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
        Drawable drawable = this.o;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        drawable.setVisible(false, false);
        drawable.setCallback(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
        Drawable.Callback callback = (Drawable.Callback) this.r.getValue();
        Drawable drawable = this.o;
        drawable.setCallback(callback);
        drawable.setVisible(true, true);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean d(float f) {
        this.o.setAlpha(RangesKt.d(MathKt.b(f * 255.0f), 0, 255));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean e(ColorFilter colorFilter) {
        android.graphics.ColorFilter colorFilter2;
        if (colorFilter != null) {
            colorFilter2 = colorFilter.a;
        } else {
            colorFilter2 = null;
        }
        this.o.setColorFilter(colorFilter2);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void f(LayoutDirection layoutDirection) {
        int i;
        layoutDirection.getClass();
        int ordinal = layoutDirection.ordinal();
        if (ordinal != 0) {
            i = 1;
            if (ordinal != 1) {
                k8.e();
                return;
            }
        } else {
            i = 0;
        }
        this.o.setLayoutDirection(i);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        return ((Size) ((SnapshotMutableStateImpl) this.q).getValue()).a;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        Canvas a = canvasDrawScope.k.a();
        ((Number) ((SnapshotMutableStateImpl) this.p).getValue()).intValue();
        try {
            a.g();
            int i = Build.VERSION.SDK_INT;
            Drawable drawable = this.o;
            if (i < 31 && (drawable instanceof AnimatedImageDrawable)) {
                a.b(Size.d(canvasDrawScope.i()) / Size.d(i()), Size.b(canvasDrawScope.i()) / Size.b(i()));
            } else {
                drawable.setBounds(0, 0, MathKt.b(Size.d(canvasDrawScope.i())), MathKt.b(Size.b(canvasDrawScope.i())));
            }
            android.graphics.Canvas canvas = AndroidCanvas_androidKt.a;
            drawable.draw(((AndroidCanvas) a).a);
            a.r();
        } catch (Throwable th) {
            a.r();
            throw th;
        }
    }
}
