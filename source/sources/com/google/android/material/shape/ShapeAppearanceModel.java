package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ShapeAppearanceModel {
    public CornerTreatment a = new Object();
    public CornerTreatment b = new Object();
    public CornerTreatment c = new Object();
    public CornerTreatment d = new Object();
    public CornerSize e = new AbsoluteCornerSize(0.0f);
    public CornerSize f = new AbsoluteCornerSize(0.0f);
    public CornerSize g = new AbsoluteCornerSize(0.0f);
    public CornerSize h = new AbsoluteCornerSize(0.0f);
    public EdgeTreatment i = new Object();
    public EdgeTreatment j = new Object();
    public EdgeTreatment k = new Object();
    public EdgeTreatment l = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public CornerTreatment a = new Object();
        public CornerTreatment b = new Object();
        public CornerTreatment c = new Object();
        public CornerTreatment d = new Object();
        public CornerSize e = new AbsoluteCornerSize(0.0f);
        public CornerSize f = new AbsoluteCornerSize(0.0f);
        public CornerSize g = new AbsoluteCornerSize(0.0f);
        public CornerSize h = new AbsoluteCornerSize(0.0f);
        public EdgeTreatment i = new Object();
        public EdgeTreatment j = new Object();
        public EdgeTreatment k = new Object();
        public EdgeTreatment l = new Object();

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.shape.ShapeAppearanceModel] */
        public final ShapeAppearanceModel a() {
            ?? obj = new Object();
            obj.a = this.a;
            obj.b = this.b;
            obj.c = this.c;
            obj.d = this.d;
            obj.e = this.e;
            obj.f = this.f;
            obj.g = this.g;
            obj.h = this.h;
            obj.i = this.i;
            obj.j = this.j;
            obj.k = this.k;
            obj.l = this.l;
            return obj;
        }
    }

    public static Builder a(Context context, AttributeSet attributeSet, int i, int i2) {
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(0.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.l, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        if (resourceId2 != 0) {
            context = new ContextThemeWrapper(context, resourceId);
            resourceId = resourceId2;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, R$styleable.r);
        try {
            int i3 = obtainStyledAttributes2.getInt(0, 0);
            int i4 = obtainStyledAttributes2.getInt(3, i3);
            int i5 = obtainStyledAttributes2.getInt(4, i3);
            int i6 = obtainStyledAttributes2.getInt(2, i3);
            int i7 = obtainStyledAttributes2.getInt(1, i3);
            CornerSize b = b(obtainStyledAttributes2, 5, absoluteCornerSize);
            CornerSize b2 = b(obtainStyledAttributes2, 8, b);
            CornerSize b3 = b(obtainStyledAttributes2, 9, b);
            CornerSize b4 = b(obtainStyledAttributes2, 7, b);
            CornerSize b5 = b(obtainStyledAttributes2, 6, b);
            Builder builder = new Builder();
            builder.a = MaterialShapeUtils.a(i4);
            builder.e = b2;
            builder.b = MaterialShapeUtils.a(i5);
            builder.f = b3;
            builder.c = MaterialShapeUtils.a(i6);
            builder.g = b4;
            builder.d = MaterialShapeUtils.a(i7);
            builder.h = b5;
            return builder;
        } finally {
            obtainStyledAttributes2.recycle();
        }
    }

    public static CornerSize b(TypedArray typedArray, int i, CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    public final boolean c(RectF rectF) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.l.getClass().equals(EdgeTreatment.class) && this.j.getClass().equals(EdgeTreatment.class) && this.i.getClass().equals(EdgeTreatment.class) && this.k.getClass().equals(EdgeTreatment.class)) {
            z = true;
        } else {
            z = false;
        }
        float a = this.e.a(rectF);
        if (this.f.a(rectF) == a && this.h.a(rectF) == a && this.g.a(rectF) == a) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((this.b instanceof RoundedCornerTreatment) && (this.a instanceof RoundedCornerTreatment) && (this.c instanceof RoundedCornerTreatment) && (this.d instanceof RoundedCornerTreatment)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z || !z2 || !z3) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.shape.ShapeAppearanceModel$Builder] */
    public final Builder d() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        return obj;
    }
}
