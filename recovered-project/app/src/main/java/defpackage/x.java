package defpackage;

import androidx.compose.material.AlertDialogKt;
import androidx.compose.material.ContentAlpha;
import androidx.compose.material.ContentAlphaKt;
import androidx.compose.material.MaterialTheme;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class x implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function2 k;

    public /* synthetic */ x(int i, Function2 function2) {
        this.j = i;
        this.k = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
        boolean z3 = false;
        Function2 function2 = this.k;
        int i2 = 2;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                Modifier modifier = AlertDialogKt.a;
                if ((intValue & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z3)) {
                    CompositionLocalKt.a(ContentAlphaKt.a.b(Float.valueOf(ContentAlpha.b(gapComposer))), ComposableLambdaKt.b(-1654653485, new x(3, function2), gapComposer), gapComposer, 56);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Modifier modifier2 = AlertDialogKt.a;
                if ((intValue & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z3)) {
                    CompositionLocalKt.a(ContentAlphaKt.a.b(Float.valueOf(ContentAlpha.c(gapComposer2))), ComposableLambdaKt.b(-2126650894, new x(i2, function2), gapComposer2), gapComposer2, 56);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Modifier modifier3 = AlertDialogKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer;
                if (gapComposer3.N(intValue & 1, z)) {
                    TextKt.a(MaterialTheme.c(gapComposer3).j, function2, gapComposer3, 0);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            default:
                Modifier modifier4 = AlertDialogKt.a;
                if ((intValue & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer;
                if (gapComposer4.N(intValue & 1, z2)) {
                    TextKt.a(MaterialTheme.c(gapComposer4).g, function2, gapComposer4, 0);
                } else {
                    gapComposer4.Q();
                }
                return unit;
        }
    }
}
