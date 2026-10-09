package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkRequestConstraintController implements ConstraintController {
    public final ConnectivityManager a;

    public NetworkRequestConstraintController(ConnectivityManager connectivityManager) {
        this.a = connectivityManager;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final Flow a(Constraints constraints) {
        constraints.getClass();
        return FlowKt.d(new NetworkRequestConstraintController$track$1(constraints, this, null));
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean b(WorkSpec workSpec) {
        if (workSpec.j.a() == null && workSpec.j.a == NetworkType.j) {
            return false;
        }
        return true;
    }
}
