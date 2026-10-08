package defpackage;

import androidx.compose.runtime.Recomposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ee implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Recomposer k;

    public /* synthetic */ ee(Recomposer recomposer, int i) {
        this.j = i;
        this.k = recomposer;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        Recomposer recomposer = this.k;
        switch (i) {
            case 0:
                MutableStateFlow mutableStateFlow = Recomposer.z;
                recomposer.F();
                return unit;
            default:
                MutableStateFlow mutableStateFlow2 = Recomposer.z;
                recomposer.F();
                return unit;
        }
    }
}
