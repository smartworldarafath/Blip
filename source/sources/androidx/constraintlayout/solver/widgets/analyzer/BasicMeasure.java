package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class BasicMeasure {
    public final ArrayList a = new ArrayList();
    public final Measure b = new Object();
    public final ConstraintWidgetContainer c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Measure {
        public ConstraintWidget.DimensionBehaviour a;
        public ConstraintWidget.DimensionBehaviour b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public boolean j;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Measurer {
        void a(ConstraintWidget constraintWidget, Measure measure);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.c = constraintWidgetContainer;
    }

    public final boolean a(Measurer measurer, ConstraintWidget constraintWidget, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.I;
        int[] iArr = constraintWidget.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        Measure measure = this.b;
        measure.a = dimensionBehaviour;
        boolean z6 = true;
        measure.b = dimensionBehaviourArr[1];
        measure.c = constraintWidget.j();
        measure.d = constraintWidget.g();
        measure.i = false;
        measure.j = z;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.l;
        if (dimensionBehaviour2 == dimensionBehaviour3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (measure.b == dimensionBehaviour3) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 && constraintWidget.M > 0.0f) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z3 && constraintWidget.M > 0.0f) {
            z5 = true;
        } else {
            z5 = false;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.j;
        if (z4 && iArr[0] == 4) {
            measure.a = dimensionBehaviour4;
        }
        if (z5 && iArr[1] == 4) {
            measure.b = dimensionBehaviour4;
        }
        measurer.a(constraintWidget, measure);
        constraintWidget.v(measure.e);
        constraintWidget.s(measure.f);
        constraintWidget.w = measure.h;
        int i = measure.g;
        constraintWidget.Q = i;
        if (i <= 0) {
            z6 = false;
        }
        constraintWidget.w = z6;
        measure.j = false;
        return measure.i;
    }

    public final void b(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2) {
        int i3 = constraintWidgetContainer.R;
        int i4 = constraintWidgetContainer.S;
        constraintWidgetContainer.R = 0;
        constraintWidgetContainer.S = 0;
        constraintWidgetContainer.v(i);
        constraintWidgetContainer.s(i2);
        if (i3 < 0) {
            constraintWidgetContainer.R = 0;
        } else {
            constraintWidgetContainer.R = i3;
        }
        if (i4 < 0) {
            constraintWidgetContainer.S = 0;
        } else {
            constraintWidgetContainer.S = i4;
        }
        this.c.y();
    }
}
