package defpackage;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class zf implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;
    public final /* synthetic */ Function1 l;

    public /* synthetic */ zf(Function1 function1, Function1 function12, int i) {
        this.j = i;
        this.k = function1;
        this.l = function12;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Function1 function1 = this.l;
        Function1 function12 = this.k;
        switch (i) {
            case 0:
                le leVar = SnapshotKt.a;
                function12.b(obj);
                function1.b(obj);
                return unit;
            default:
                le leVar2 = SnapshotKt.a;
                function12.b(obj);
                function1.b(obj);
                return unit;
        }
    }
}
