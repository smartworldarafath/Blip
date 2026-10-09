package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BatteryChargingController extends BaseConstraintController<Boolean> {
    public final int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryChargingController(ConstraintTracker constraintTracker) {
        super(constraintTracker);
        constraintTracker.getClass();
        this.b = 6;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean b(WorkSpec workSpec) {
        return workSpec.j.c;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final int c() {
        return this.b;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final boolean d(Object obj) {
        return !((Boolean) obj).booleanValue();
    }
}
