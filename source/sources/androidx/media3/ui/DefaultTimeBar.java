package androidx.media3.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.ui.DefaultTimeBar;
import androidx.media3.ui.TimeBar;
import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultTimeBar extends View implements TimeBar {
    public static final /* synthetic */ int b0 = 0;
    public final int A;
    public final int B;
    public final int C;
    public final StringBuilder D;
    public final Formatter E;
    public final defpackage.e F;
    public final CopyOnWriteArraySet G;
    public final Point H;
    public final float I;
    public int J;
    public long K;
    public int L;
    public Rect M;
    public final ValueAnimator N;
    public float O;
    public boolean P;
    public boolean Q;
    public long R;
    public long S;
    public long T;
    public long U;
    public int V;
    public long[] W;
    public boolean[] a0;
    public final Rect j;
    public final Rect k;
    public final Rect l;
    public final Rect m;
    public final Paint n;
    public final Paint o;
    public final Paint p;
    public final Paint q;
    public final Paint r;
    public final Paint s;
    public final Drawable t;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    public DefaultTimeBar(Context context) {
        super(context, null, 0);
        this.j = new Rect();
        this.k = new Rect();
        this.l = new Rect();
        this.m = new Rect();
        Paint paint = new Paint();
        this.n = paint;
        Paint paint2 = new Paint();
        this.o = paint2;
        Paint paint3 = new Paint();
        this.p = paint3;
        Paint paint4 = new Paint();
        this.q = paint4;
        Paint paint5 = new Paint();
        this.r = paint5;
        Paint paint6 = new Paint();
        this.s = paint6;
        paint6.setAntiAlias(true);
        this.G = new CopyOnWriteArraySet();
        this.H = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.I = f;
        this.C = a(-50, f);
        int a = a(4, f);
        int a2 = a(26, f);
        int a3 = a(4, f);
        int a4 = a(12, f);
        int a5 = a(0, f);
        int a6 = a(16, f);
        this.u = a;
        this.v = a2;
        this.w = 0;
        this.x = a3;
        this.y = a4;
        this.z = a5;
        this.A = a6;
        paint.setColor(-1);
        paint6.setColor(-1);
        paint2.setColor(-855638017);
        paint3.setColor(872415231);
        paint4.setColor(-1291845888);
        paint5.setColor(872414976);
        this.t = null;
        StringBuilder sb = new StringBuilder();
        this.D = sb;
        this.E = new Formatter(sb, Locale.getDefault());
        this.F = new defpackage.e(8, this);
        this.B = (Math.max(a5, Math.max(a4, a6)) + 1) / 2;
        this.O = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.N = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: n7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i = DefaultTimeBar.b0;
                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                DefaultTimeBar defaultTimeBar = DefaultTimeBar.this;
                defaultTimeBar.O = floatValue;
                defaultTimeBar.invalidate(defaultTimeBar.j);
            }
        });
        this.S = -9223372036854775807L;
        this.K = -9223372036854775807L;
        this.J = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int a(int i, float f) {
        return (int) ((i * f) + 0.5f);
    }

    private long getPositionIncrement() {
        long j = this.K;
        if (j == -9223372036854775807L) {
            long j2 = this.S;
            if (j2 == -9223372036854775807L) {
                return 0L;
            }
            return j2 / this.J;
        }
        return j;
    }

    private String getProgressText() {
        return Util.u(this.D, this.E, this.T);
    }

    private long getScrubberPosition() {
        if (this.k.width() > 0 && this.S != -9223372036854775807L) {
            return (this.m.width() * this.S) / r0.width();
        }
        return 0L;
    }

    public final boolean b(long j) {
        long j2;
        long j3 = this.S;
        if (j3 > 0) {
            if (this.Q) {
                j2 = this.R;
            } else {
                j2 = this.T;
            }
            long j4 = j2;
            long h = Util.h(j4 + j, 0L, j3);
            if (h == j4) {
                return false;
            }
            if (!this.Q) {
                c(h);
            } else {
                f(h);
            }
            e();
            return true;
        }
        return false;
    }

    public final void c(long j) {
        this.R = j;
        this.Q = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.G.iterator();
        while (it.hasNext()) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.F0 = true;
            TextView textView = playerControlView.T;
            if (textView != null) {
                textView.setText(Util.u(playerControlView.V, playerControlView.W, j));
            }
            playerControlView.j.f();
            Player player = playerControlView.z0;
            if (player != null && playerControlView.H0) {
                if (playerControlView.i(player)) {
                    try {
                        Method method = playerControlView.o;
                        method.getClass();
                        method.invoke(playerControlView.z0, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e) {
                        throw new RuntimeException(e);
                    }
                } else if (playerControlView.h(playerControlView.z0)) {
                    try {
                        Method method2 = playerControlView.r;
                        method2.getClass();
                        method2.invoke(playerControlView.z0, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    StringBuilder sb = new StringBuilder("Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can't enable scrubbing mode). player.class=");
                    Player player2 = playerControlView.z0;
                    player2.getClass();
                    sb.append(player2.getClass());
                    Log.f("PlayerControlView", sb.toString());
                }
            }
            if (playerControlView.k(playerControlView.z0)) {
                PlayerControlView.a(playerControlView, playerControlView.z0, j);
            }
        }
    }

    public final void d(boolean z) {
        removeCallbacks(this.F);
        this.Q = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.G.iterator();
        while (it.hasNext()) {
            TimeBar.OnScrubListener onScrubListener = (TimeBar.OnScrubListener) it.next();
            long j = this.R;
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.F0 = false;
            Player player = playerControlView.z0;
            if (player != null) {
                if (!z) {
                    PlayerControlView.a(playerControlView, player, j);
                }
                if (playerControlView.i(playerControlView.z0)) {
                    try {
                        Method method = playerControlView.o;
                        method.getClass();
                        method.invoke(playerControlView.z0, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e) {
                        throw new RuntimeException(e);
                    }
                } else if (playerControlView.h(playerControlView.z0)) {
                    try {
                        Method method2 = playerControlView.r;
                        method2.getClass();
                        method2.invoke(playerControlView.z0, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    continue;
                }
            }
            playerControlView.j.g();
        }
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.t;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void e() {
        long j;
        Rect rect = this.l;
        Rect rect2 = this.k;
        rect.set(rect2);
        Rect rect3 = this.m;
        rect3.set(rect2);
        if (this.Q) {
            j = this.R;
        } else {
            j = this.T;
        }
        if (this.S > 0) {
            rect.right = Math.min(rect2.left + ((int) ((rect2.width() * this.U) / this.S)), rect2.right);
            rect3.right = Math.min(rect2.left + ((int) ((rect2.width() * j) / this.S)), rect2.right);
        } else {
            int i = rect2.left;
            rect.right = i;
            rect3.right = i;
        }
        invalidate(this.j);
    }

    public final void f(long j) {
        if (this.R != j) {
            this.R = j;
            Iterator it = this.G.iterator();
            while (it.hasNext()) {
                PlayerControlView playerControlView = PlayerControlView.this;
                TextView textView = playerControlView.T;
                if (textView != null) {
                    textView.setText(Util.u(playerControlView.V, playerControlView.W, j));
                }
                if (playerControlView.k(playerControlView.z0)) {
                    PlayerControlView.a(playerControlView, playerControlView.z0, j);
                }
            }
        }
    }

    @Override // androidx.media3.ui.TimeBar
    public long getPreferredUpdateDelay() {
        int width = (int) (this.k.width() / this.I);
        if (width != 0) {
            long j = this.S;
            if (j != 0 && j != -9223372036854775807L) {
                return j / width;
            }
            return Long.MAX_VALUE;
        }
        return Long.MAX_VALUE;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        Canvas canvas2;
        int i;
        canvas.save();
        Rect rect = this.k;
        int height = rect.height();
        int centerY = rect.centerY() - (height / 2);
        int i2 = centerY + height;
        long j = this.S;
        Paint paint2 = this.p;
        Rect rect2 = this.m;
        if (j <= 0) {
            canvas2 = canvas;
            canvas2.drawRect(rect.left, centerY, rect.right, i2, paint2);
        } else {
            Rect rect3 = this.l;
            int i3 = rect3.left;
            int i4 = rect3.right;
            int max = Math.max(Math.max(rect.left, i4), rect2.right);
            int i5 = rect.right;
            if (max < i5) {
                canvas.drawRect(max, centerY, i5, i2, paint2);
            }
            int max2 = Math.max(i3, rect2.right);
            if (i4 > max2) {
                canvas.drawRect(max2, centerY, i4, i2, this.o);
            }
            if (rect2.width() > 0) {
                canvas.drawRect(rect2.left, centerY, rect2.right, i2, this.n);
            }
            if (this.V != 0) {
                long[] jArr = this.W;
                jArr.getClass();
                boolean[] zArr = this.a0;
                zArr.getClass();
                int i6 = this.x;
                int i7 = i6 / 2;
                int i8 = 0;
                int i9 = 0;
                while (i9 < this.V) {
                    int min = Math.min(rect.width() - i6, Math.max(i8, ((int) ((rect.width() * Util.h(jArr[i9], 0L, this.S)) / this.S)) - i7)) + rect.left;
                    if (zArr[i9]) {
                        paint = this.r;
                    } else {
                        paint = this.q;
                    }
                    Paint paint3 = paint;
                    int i10 = i9;
                    canvas.drawRect(min, centerY, min + i6, i2, paint3);
                    i9 = i10 + 1;
                    i8 = i8;
                }
            }
            canvas2 = canvas;
        }
        if (this.S > 0) {
            int g = Util.g(rect2.right, rect2.left, rect.right);
            int centerY2 = rect2.centerY();
            Drawable drawable = this.t;
            if (drawable == null) {
                if (!this.Q && !isFocused()) {
                    if (isEnabled()) {
                        i = this.y;
                    } else {
                        i = this.z;
                    }
                } else {
                    i = this.A;
                }
                canvas2.drawCircle(g, centerY2, (int) ((i * this.O) / 2.0f), this.s);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.O)) / 2;
                int intrinsicHeight = ((int) (drawable.getIntrinsicHeight() * this.O)) / 2;
                drawable.setBounds(g - intrinsicWidth, centerY2 - intrinsicHeight, g + intrinsicWidth, centerY2 + intrinsicHeight);
                drawable.draw(canvas2);
            }
        }
        canvas2.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.Q && !z) {
            d(false);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.S <= 0) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i != 66) {
                switch (i) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (b(positionIncrement)) {
                            defpackage.e eVar = this.F;
                            removeCallbacks(eVar);
                            postDelayed(eVar, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (b(positionIncrement)) {
                        }
                        break;
                }
            }
            if (this.Q) {
                d(false);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        Rect rect;
        int i8 = i3 - i;
        int i9 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i8 - getPaddingRight();
        if (this.P) {
            i5 = 0;
        } else {
            i5 = this.B;
        }
        int i10 = this.w;
        int i11 = this.u;
        int i12 = this.v;
        if (i10 == 1) {
            i6 = (i9 - getPaddingBottom()) - i12;
            i7 = ((i9 - getPaddingBottom()) - i11) - Math.max(i5 - (i11 / 2), 0);
        } else {
            i6 = (i9 - i12) / 2;
            i7 = (i9 - i11) / 2;
        }
        Rect rect2 = this.j;
        rect2.set(paddingLeft, i6, paddingRight, i12 + i6);
        this.k.set(rect2.left + i5, i7, rect2.right - i5, i11 + i7);
        if (Build.VERSION.SDK_INT >= 29 && ((rect = this.M) == null || rect.width() != i8 || this.M.height() != i9)) {
            Rect rect3 = new Rect(0, 0, i8, i9);
            this.M = rect3;
            setSystemGestureExclusionRects(Collections.singletonList(rect3));
        }
        e();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int i3 = this.v;
        if (mode == 0) {
            size = i3;
        } else if (mode != 1073741824) {
            size = Math.min(i3, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        Drawable drawable = this.t;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.t;
        if (drawable != null && drawable.setLayoutDirection(i)) {
            invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if (r3 != 3) goto L34;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (isEnabled() && this.S > 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            Point point = this.H;
            point.set(x, y);
            int i = point.x;
            int i2 = point.y;
            int action = motionEvent.getAction();
            Rect rect = this.k;
            Rect rect2 = this.m;
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        if (this.Q) {
                            if (i2 < this.C) {
                                int i3 = this.L;
                                rect2.right = Util.g(((i - i3) / 3) + i3, rect.left, rect.right);
                            } else {
                                this.L = i;
                                rect2.right = Util.g(i, rect.left, rect.right);
                            }
                            f(getScrubberPosition());
                            e();
                            invalidate();
                            return true;
                        }
                    }
                }
                if (this.Q) {
                    if (motionEvent.getAction() == 3) {
                        z = true;
                    }
                    d(z);
                    return true;
                }
            } else {
                int i4 = i;
                if (this.j.contains(i4, i2)) {
                    rect2.right = Util.g(i4, rect.left, rect.right);
                    c(getScrubberPosition());
                    e();
                    invalidate();
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.S <= 0) {
            return false;
        }
        if (i == 8192) {
            if (b(-getPositionIncrement())) {
                d(false);
            }
        } else {
            if (i != 4096) {
                return false;
            }
            if (b(getPositionIncrement())) {
                d(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i) {
        this.q.setColor(i);
        invalidate(this.j);
    }

    public void setBufferedColor(int i) {
        this.o.setColor(i);
        invalidate(this.j);
    }

    @Override // androidx.media3.ui.TimeBar
    public void setBufferedPosition(long j) {
        if (this.U == j) {
            return;
        }
        this.U = j;
        e();
    }

    @Override // androidx.media3.ui.TimeBar
    public void setDuration(long j) {
        if (this.S == j) {
            return;
        }
        this.S = j;
        if (this.Q && j == -9223372036854775807L) {
            d(true);
        }
        e();
    }

    @Override // android.view.View, androidx.media3.ui.TimeBar
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.Q && !z) {
            d(true);
        }
    }

    public void setKeyCountIncrement(int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.J = i;
        this.K = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        boolean z;
        if (j > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.J = -1;
        this.K = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.r.setColor(i);
        invalidate(this.j);
    }

    public void setPlayedColor(int i) {
        this.n.setColor(i);
        invalidate(this.j);
    }

    @Override // androidx.media3.ui.TimeBar
    public void setPosition(long j) {
        if (this.T == j) {
            return;
        }
        this.T = j;
        setContentDescription(getProgressText());
        e();
    }

    public void setScrubberColor(int i) {
        this.s.setColor(i);
        invalidate(this.j);
    }

    public void setUnplayedColor(int i) {
        this.p.setColor(i);
        invalidate(this.j);
    }
}
