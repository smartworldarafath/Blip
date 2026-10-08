package androidx.work.impl.constraints.controllers;

import androidx.work.Constraints;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseConstraintController<T> implements ConstraintController {
    public final ConstraintTracker a;

    public BaseConstraintController(ConstraintTracker constraintTracker) {
        constraintTracker.getClass();
        this.a = constraintTracker;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final Flow a(Constraints constraints) {
        constraints.getClass();
        return FlowKt.d(new BaseConstraintController$track$1(this, null));
    }

    public abstract int c();

    public abstract boolean d(Object obj);
}
