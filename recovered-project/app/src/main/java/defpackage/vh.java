package defpackage;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class vh implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;

    public /* synthetic */ vh(MutableState mutableState, int i) {
        this.j = i;
        this.k = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.k;
        switch (i) {
            case 0:
                mutableState.setValue(null);
                return unit;
            default:
                mutableState.setValue(Boolean.FALSE);
                return unit;
        }
    }
}
