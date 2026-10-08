package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.HashMap;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class TimePickerView extends ConstraintLayout {
    public static final /* synthetic */ int z = 0;
    public final MaterialButtonToggleGroup y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = TimePickerView.z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements MaterialButtonToggleGroup.OnButtonCheckedListener {
        @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
        public final void a() {
            int i = TimePickerView.z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            boolean onDoubleTap = super.onDoubleTap(motionEvent);
            int i = TimePickerView.z;
            return onDoubleTap;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        ?? obj = new Object();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.y = materialButtonToggleGroup;
        materialButtonToggleGroup.m.add(new Object());
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener());
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.google.android.material.timepicker.TimePickerView.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (((Checkable) view).isChecked()) {
                    return gestureDetector.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        chip.setOnTouchListener(onTouchListener);
        chip2.setOnTouchListener(onTouchListener);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(obj);
        chip2.setOnClickListener(obj);
    }

    public final void f() {
        char c;
        if (this.y.getVisibility() == 0) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.b(this);
            Field field = ViewCompat.a;
            if (getLayoutDirection() == 0) {
                c = 2;
            } else {
                c = 1;
            }
            Integer valueOf = Integer.valueOf(R.id.material_clock_display);
            HashMap hashMap = constraintSet.c;
            if (hashMap.containsKey(valueOf)) {
                ConstraintSet.Constraint constraint = (ConstraintSet.Constraint) hashMap.get(Integer.valueOf(R.id.material_clock_display));
                switch (c) {
                    case 1:
                        ConstraintSet.Layout layout = constraint.d;
                        layout.h = -1;
                        layout.g = -1;
                        layout.C = -1;
                        layout.I = -1;
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        ConstraintSet.Layout layout2 = constraint.d;
                        layout2.j = -1;
                        layout2.i = -1;
                        layout2.D = -1;
                        layout2.K = -1;
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        ConstraintSet.Layout layout3 = constraint.d;
                        layout3.l = -1;
                        layout3.k = -1;
                        layout3.E = -1;
                        layout3.J = -1;
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        ConstraintSet.Layout layout4 = constraint.d;
                        layout4.m = -1;
                        layout4.n = -1;
                        layout4.F = -1;
                        layout4.L = -1;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        constraint.d.o = -1;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        ConstraintSet.Layout layout5 = constraint.d;
                        layout5.p = -1;
                        layout5.q = -1;
                        layout5.H = -1;
                        layout5.N = -1;
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        ConstraintSet.Layout layout6 = constraint.d;
                        layout6.r = -1;
                        layout6.s = -1;
                        layout6.G = -1;
                        layout6.M = -1;
                        break;
                    default:
                        u2.g("unknown constraint");
                        return;
                }
            }
            constraintSet.a(this);
            setConstraintSet(null);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        f();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            f();
        }
    }
}
