package androidx.work.impl.constraints.controllers;

import androidx.work.Constraints;
import androidx.work.impl.model.WorkSpec;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ConstraintController {
    Flow a(Constraints constraints);

    boolean b(WorkSpec workSpec);
}
