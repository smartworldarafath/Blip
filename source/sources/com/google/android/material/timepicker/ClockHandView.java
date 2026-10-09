package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ClockHandView extends View {
    public final ArrayList j;
    public final int k;
    public final float l;
    public final Paint m;
    public final RectF n;
    public final int o;
    public float p;
    public boolean q;
    public double r;
    public int s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnRotateListener {
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        this.j = new ArrayList();
        Paint paint = new Paint();
        this.m = paint;
        this.n = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.e, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.s = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.k = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.o = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.l = r4.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        a(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        Field field = ViewCompat.a;
        setImportantForAccessibility(2);
        obtainStyledAttributes.recycle();
    }

    public final void a(float f) {
        float f2 = f % 360.0f;
        this.p = f2;
        this.r = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float cos = (this.s * ((float) Math.cos(this.r))) + (getWidth() / 2);
        float sin = (this.s * ((float) Math.sin(this.r))) + height;
        float f3 = this.k;
        this.n.set(cos - f3, sin - f3, cos + f3, sin + f3);
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ClockFaceView clockFaceView = (ClockFaceView) ((OnRotateListener) it.next());
            if (Math.abs(clockFaceView.N - f2) > 0.001f) {
                clockFaceView.N = f2;
                clockFaceView.g();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float cos = (this.s * ((float) Math.cos(this.r))) + width;
        float f = height;
        float sin = (this.s * ((float) Math.sin(this.r))) + f;
        Paint paint = this.m;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.k, paint);
        double sin2 = Math.sin(this.r);
        double cos2 = Math.cos(this.r);
        paint.setStrokeWidth(this.o);
        canvas.drawLine(width, f, r1 + ((int) (cos2 * r5)), height + ((int) (r5 * sin2)), paint);
        canvas.drawCircle(width, f, this.l, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(this.p);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z4 = false;
        if (actionMasked != 0) {
            if (actionMasked != 1 && actionMasked != 2) {
                z2 = false;
                z = false;
            } else {
                z2 = this.q;
                z = false;
            }
        } else {
            this.q = false;
            z = true;
            z2 = false;
        }
        boolean z5 = this.q;
        int degrees = (int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)));
        int i = degrees + 90;
        if (i < 0) {
            i = degrees + 450;
        }
        float f = i;
        if (this.p != f) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z || !z3) {
            if (z3 || z2) {
                a(f);
            }
            this.q = z5 | z4;
            return true;
        }
        z4 = true;
        this.q = z5 | z4;
        return true;
    }
}
