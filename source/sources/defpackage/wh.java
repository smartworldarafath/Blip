package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class wh implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Transition k;

    public /* synthetic */ wh(Transition transition, int i) {
        this.j = i;
        this.k = transition;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        boolean z;
        int i = this.j;
        Transition transition = this.k;
        switch (i) {
            case 0:
                if (Intrinsics.a(((SnapshotMutableStateImpl) transition.d).getValue(), transition.a.a()) && !transition.g() && !((Boolean) ((SnapshotMutableStateImpl) transition.i).getValue()).booleanValue()) {
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return Long.valueOf(transition.b());
        }
    }
}
