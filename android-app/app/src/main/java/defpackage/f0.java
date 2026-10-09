package defpackage;

import androidx.compose.material.AnchoredDraggableState;
import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AnchoredDraggableState k;

    public /* synthetic */ f0(AnchoredDraggableState anchoredDraggableState, int i) {
        this.j = i;
        this.k = anchoredDraggableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        AnchoredDraggableState anchoredDraggableState = this.k;
        switch (i) {
            case 0:
                Object value = ((SnapshotMutableStateImpl) anchoredDraggableState.l).getValue();
                if (value == null) {
                    float e = anchoredDraggableState.e();
                    boolean isNaN = Float.isNaN(e);
                    MutableState mutableState = anchoredDraggableState.g;
                    if (!isNaN) {
                        return anchoredDraggableState.c(e, 0.0f, ((SnapshotMutableStateImpl) mutableState).getValue());
                    }
                    return ((SnapshotMutableStateImpl) mutableState).getValue();
                }
                return value;
            case 1:
                return anchoredDraggableState.d();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return new Pair(anchoredDraggableState.d(), anchoredDraggableState.h.getValue());
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                float f = SwitchKt.a;
                return Float.valueOf(anchoredDraggableState.f());
            default:
                Boolean bool = (Boolean) ((SnapshotMutableStateImpl) anchoredDraggableState.g).getValue();
                bool.booleanValue();
                return bool;
        }
    }
}
