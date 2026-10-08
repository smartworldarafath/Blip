package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        if (r4 > 0.999999f) goto L22;
     */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        float f;
        RecomposeScopeOwner recomposeScopeOwner;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                AnchoredDraggableState anchoredDraggableState = (AnchoredDraggableState) obj;
                Object value = ((SnapshotMutableStateImpl) anchoredDraggableState.l).getValue();
                if (value == null) {
                    float e = anchoredDraggableState.e();
                    boolean isNaN = Float.isNaN(e);
                    MutableState mutableState = anchoredDraggableState.g;
                    if (!isNaN) {
                        Object value2 = ((SnapshotMutableStateImpl) mutableState).getValue();
                        MapDraggableAnchors mapDraggableAnchors = (MapDraggableAnchors) anchoredDraggableState.d();
                        float c = mapDraggableAnchors.c(value2);
                        if (c != e && !Float.isNaN(c)) {
                            if (c < e) {
                                Object b = mapDraggableAnchors.b(e, true);
                                if (b != null) {
                                    return b;
                                }
                            } else {
                                Object b2 = mapDraggableAnchors.b(e, false);
                                if (b2 != null) {
                                    return b2;
                                }
                            }
                        }
                        return value2;
                    }
                    return ((SnapshotMutableStateImpl) mutableState).getValue();
                }
                return value;
            case 1:
                AnchoredDraggableState anchoredDraggableState2 = (AnchoredDraggableState) obj;
                float c2 = ((MapDraggableAnchors) anchoredDraggableState2.d()).c(((SnapshotMutableStateImpl) anchoredDraggableState2.g).getValue());
                float c3 = ((MapDraggableAnchors) anchoredDraggableState2.d()).c(anchoredDraggableState2.i.getValue()) - c2;
                float abs = Math.abs(c3);
                if (!Float.isNaN(abs) && abs > 1.0E-6f) {
                    f = (anchoredDraggableState2.f() - c2) / c3;
                    if (f >= 1.0E-6f) {
                        break;
                    } else {
                        f = 0.0f;
                    }
                    return Float.valueOf(f);
                }
                f = 1.0f;
                return Float.valueOf(f);
            default:
                FadeInFadeOutState fadeInFadeOutState = (FadeInFadeOutState) obj;
                if (!Intrinsics.a(null, fadeInFadeOutState.a)) {
                    CollectionsKt.J(fadeInFadeOutState.b, new Object());
                    RecomposeScopeImpl recomposeScopeImpl = fadeInFadeOutState.c;
                    if (recomposeScopeImpl != null && (recomposeScopeOwner = recomposeScopeImpl.a) != null) {
                        recomposeScopeOwner.c(recomposeScopeImpl, null);
                    }
                }
                return Unit.a;
        }
    }
}
