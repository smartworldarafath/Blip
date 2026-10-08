package defpackage;

import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.ContentAlpha;
import androidx.compose.material.ContentAlphaKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.components.HUDKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class t implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;

    public /* synthetic */ t(Pair pair, boolean z) {
        this.j = 0;
        this.l = pair;
        this.k = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        float a;
        int i = this.j;
        int i2 = 0;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        boolean z3 = this.k;
        switch (i) {
            case 0:
                Pair pair = (Pair) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    if (pair == null) {
                        gapComposer.W(1360061929);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(1360061930);
                        ButtonKt.b((Function0) pair.k, false, null, ComposableLambdaKt.b(-768705207, new z(i2, pair, z3), gapComposer), gapComposer, 510);
                        gapComposer.p(false);
                    }
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                CoreTextFieldKt.c((TextFieldSelectionManager) obj3, z3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                HUDKt.a((Modifier) obj3, z3, (Composer) obj, RecomposeScopeImplKt.a(3463));
                return unit;
            default:
                Function3 function3 = (Function3) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    if (z3) {
                        gapComposer2.W(-1691869137);
                        a = ContentAlpha.b(gapComposer2);
                    } else {
                        gapComposer2.W(-1691868397);
                        a = ContentAlpha.a(0.38f, 0.38f, gapComposer2);
                    }
                    gapComposer2.p(false);
                    CompositionLocalKt.a(ContentAlphaKt.a.b(Float.valueOf(a)), ComposableLambdaKt.b(-308149173, new v3(function3), gapComposer2), gapComposer2, 56);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ t(Object obj, boolean z, int i, int i2) {
        this.j = i2;
        this.l = obj;
        this.k = z;
    }

    public /* synthetic */ t(boolean z, Function3 function3) {
        this.j = 3;
        this.k = z;
        this.l = function3;
    }
}
