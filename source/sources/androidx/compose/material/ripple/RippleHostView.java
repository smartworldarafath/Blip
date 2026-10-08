package androidx.compose.material.ripple;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.e;
import defpackage.r1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RippleHostView extends View {
    public static final int[] o = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] p = new int[0];
    public UnprojectedRipple j;
    public Boolean k;
    public Long l;
    public e m;
    public r1 n;

    public static /* synthetic */ void a(RippleHostView rippleHostView) {
        setRippleState$lambda$1(rippleHostView);
    }

    private final void setRippleState(boolean z) {
        long j;
        int[] iArr;
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.m;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l = this.l;
        if (l != null) {
            j = l.longValue();
        } else {
            j = 0;
        }
        long j2 = currentAnimationTimeMillis - j;
        if (!z && j2 < 5) {
            e eVar = new e(15, this);
            this.m = eVar;
            postDelayed(eVar, 50L);
        } else {
            if (z) {
                iArr = o;
            } else {
                iArr = p;
            }
            UnprojectedRipple unprojectedRipple = this.j;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(iArr);
            }
        }
        this.l = Long.valueOf(currentAnimationTimeMillis);
    }

    public static final void setRippleState$lambda$1(RippleHostView rippleHostView) {
        UnprojectedRipple unprojectedRipple = rippleHostView.j;
        if (unprojectedRipple != null) {
            unprojectedRipple.setState(p);
        }
        rippleHostView.m = null;
    }

    public final void b(PressInteraction.Press press, boolean z, long j, int i, long j2, float f, r1 r1Var) {
        if (this.j == null || !Boolean.valueOf(z).equals(this.k)) {
            UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z);
            setBackground(unprojectedRipple);
            this.j = unprojectedRipple;
            this.k = Boolean.valueOf(z);
        }
        UnprojectedRipple unprojectedRipple2 = this.j;
        unprojectedRipple2.getClass();
        this.n = r1Var;
        e(j, i, j2, f);
        if (z) {
            unprojectedRipple2.setHotspot(Float.intBitsToFloat((int) (press.a >> 32)), Float.intBitsToFloat((int) (press.a & 4294967295L)));
        } else {
            unprojectedRipple2.setHotspot(unprojectedRipple2.getBounds().centerX(), unprojectedRipple2.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void c() {
        this.n = null;
        e eVar = this.m;
        if (eVar != null) {
            removeCallbacks(eVar);
            e eVar2 = this.m;
            eVar2.getClass();
            eVar2.run();
        } else {
            UnprojectedRipple unprojectedRipple = this.j;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(p);
            }
        }
        UnprojectedRipple unprojectedRipple2 = this.j;
        if (unprojectedRipple2 == null) {
            return;
        }
        unprojectedRipple2.setVisible(false, false);
        unscheduleDrawable(unprojectedRipple2);
    }

    public final void d() {
        setRippleState(false);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (!isAttachedToWindow()) {
            c();
        } else {
            super.draw(canvas);
        }
    }

    public final void e(long j, int i, long j2, float f) {
        boolean c;
        UnprojectedRipple unprojectedRipple = this.j;
        if (unprojectedRipple == null) {
            return;
        }
        if (unprojectedRipple.getRadius() != i) {
            unprojectedRipple.setRadius(i);
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        long b = Color.b(j2, f);
        Color color = unprojectedRipple.k;
        if (color == null) {
            c = false;
        } else {
            c = Color.c(color.a, b);
        }
        if (!c) {
            unprojectedRipple.k = new Color(b);
            unprojectedRipple.setColor(ColorStateList.valueOf(ColorKt.f(b)));
        }
        Rect rect = new Rect(0, 0, MathKt.b(Size.d(j)), MathKt.b(Size.b(j)));
        setLeft(rect.left);
        setTop(rect.top);
        setRight(rect.right);
        setBottom(rect.bottom);
        unprojectedRipple.setBounds(rect);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        r1 r1Var = this.n;
        if (r1Var != null) {
            r1Var.a();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
