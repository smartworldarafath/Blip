package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ClockFaceView extends RadialViewGroup implements ClockHandView.OnRotateListener {
    public final ClockHandView B;
    public final Rect C;
    public final RectF D;
    public final SparseArray E;
    public final AccessibilityDelegateCompat F;
    public final int[] G;
    public final float[] H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final String[] M;
    public float N;
    public final ColorStateList O;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.C = new Rect();
        this.D = new RectF();
        SparseArray sparseArray = new SparseArray();
        this.E = sparseArray;
        this.H = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.d, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList a = MaterialResources.a(context, obtainStyledAttributes, 1);
        this.O = a;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.B = clockHandView;
        this.I = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = a.getColorForState(new int[]{android.R.attr.state_selected}, a.getDefaultColor());
        this.G = new int[]{colorForState, colorForState, a.getDefaultColor()};
        clockHandView.j.add(this);
        int defaultColor = ResourcesCompat.a(context.getResources(), R.color.material_timepicker_clockface, context.getTheme()).getDefaultColor();
        ColorStateList a2 = MaterialResources.a(context, obtainStyledAttributes, 0);
        setBackgroundColor(a2 != null ? a2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.timepicker.ClockFaceView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                ClockFaceView clockFaceView = ClockFaceView.this;
                ClockHandView clockHandView2 = clockFaceView.B;
                if (clockFaceView.isShown()) {
                    clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
                    int height = ((clockFaceView.getHeight() / 2) - clockHandView2.k) - clockFaceView.I;
                    if (height != clockFaceView.z) {
                        clockFaceView.z = height;
                        clockFaceView.f();
                        clockHandView2.s = clockFaceView.z;
                        clockHandView2.invalidate();
                    }
                }
                return true;
            }
        });
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.F = new AccessibilityDelegateCompat() { // from class: com.google.android.material.timepicker.ClockFaceView.2
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
                this.j.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
                if (intValue > 0) {
                    accessibilityNodeInfo.setTraversalAfter((View) ClockFaceView.this.E.get(intValue - 1));
                }
                accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(view.isSelected(), 0, 1, intValue, 1));
            }
        };
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.M = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        for (int i = 0; i < Math.max(this.M.length, size); i++) {
            TextView textView = (TextView) sparseArray.get(i);
            if (i >= this.M.length) {
                removeView(textView);
                sparseArray.remove(i);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.M[i]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i));
                ViewCompat.n(textView, this.F);
                textView.setTextColor(this.O);
            }
        }
        this.J = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.K = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.L = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    public final void g() {
        RadialGradient radialGradient;
        RectF rectF = this.B.n;
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.E;
            if (i < sparseArray.size()) {
                TextView textView = (TextView) sparseArray.get(i);
                if (textView != null) {
                    Rect rect = this.C;
                    textView.getDrawingRect(rect);
                    rect.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                    offsetDescendantRectToMyCoords(textView, rect);
                    RectF rectF2 = this.D;
                    rectF2.set(rect);
                    if (!RectF.intersects(rectF, rectF2)) {
                        radialGradient = null;
                    } else {
                        radialGradient = new RadialGradient(rectF.centerX() - rectF2.left, rectF.centerY() - rectF2.top, 0.5f * rectF.width(), this.G, this.H, Shader.TileMode.CLAMP);
                    }
                    textView.getPaint().setShader(radialGradient);
                    textView.invalidate();
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, this.M.length, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.L / Math.max(Math.max(this.J / displayMetrics.heightPixels, this.K / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }
}
