package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public int p;
    public int q;
    public androidx.constraintlayout.solver.widgets.Barrier r;

    public Barrier(Context context) {
        super(context);
        this.j = new int[32];
        this.o = new HashMap();
        this.l = context;
        e(null);
        super.setVisibility(8);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.Barrier] */
    public final void e(AttributeSet attributeSet) {
        int[] iArr = R$styleable.b;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, iArr);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 19) {
                    String string = obtainStyledAttributes.getString(index);
                    this.n = string;
                    setIds(string);
                }
            }
        }
        ?? constraintWidget = new ConstraintWidget();
        constraintWidget.d0 = new ConstraintWidget[4];
        constraintWidget.e0 = 0;
        constraintWidget.f0 = 0;
        constraintWidget.g0 = true;
        constraintWidget.h0 = 0;
        this.r = constraintWidget;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, iArr);
            int indexCount2 = obtainStyledAttributes2.getIndexCount();
            for (int i2 = 0; i2 < indexCount2; i2++) {
                int index2 = obtainStyledAttributes2.getIndex(i2);
                if (index2 == 15) {
                    setType(obtainStyledAttributes2.getInt(index2, 0));
                } else if (index2 == 14) {
                    this.r.g0 = obtainStyledAttributes2.getBoolean(index2, true);
                } else if (index2 == 16) {
                    this.r.h0 = obtainStyledAttributes2.getDimensionPixelSize(index2, 0);
                }
            }
        }
        this.m = this.r;
        d();
    }

    public int getMargin() {
        return this.r.h0;
    }

    public int getType() {
        return this.p;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.r.g0 = z;
    }

    public void setDpMargin(int i) {
        this.r.h0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.r.h0 = i;
    }

    public void setType(int i) {
        this.p = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new int[32];
        this.o = new HashMap();
        this.l = context;
        e(attributeSet);
        super.setVisibility(8);
    }
}
