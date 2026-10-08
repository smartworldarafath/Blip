package defpackage;

import androidx.compose.material.ContentAlphaKt;
import androidx.compose.material.ContentColorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class xg implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ Float k;
    public final /* synthetic */ Function2 l;
    public final /* synthetic */ long m;

    public /* synthetic */ xg(long j, Float f, Function2 function2) {
        this.m = j;
        this.k = f;
        this.l = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        boolean z2 = false;
        long j = this.m;
        Function2 function2 = this.l;
        Float f = this.k;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    CompositionLocalKt.a(ContentColorKt.a.b(new Color(j)), ComposableLambdaKt.b(-1624601445, new xg(f, function2, j), gapComposer), gapComposer, 56);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z)) {
                    if (f != null) {
                        gapComposer2.W(1484860324);
                        CompositionLocalKt.a(ContentAlphaKt.a.b(f), function2, gapComposer2, 8);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(1485059902);
                        CompositionLocalKt.a(ContentAlphaKt.a.b(Float.valueOf(Color.d(j))), function2, gapComposer2, 8);
                        gapComposer2.p(false);
                    }
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ xg(Float f, Function2 function2, long j) {
        this.k = f;
        this.l = function2;
        this.m = j;
    }
}
