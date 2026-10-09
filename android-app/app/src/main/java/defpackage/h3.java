package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.audiopicker.AudioPickerScreenKt;
import net.blip.android.ui.navigation.NavResultWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h3 implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ NavResultWriter k;

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        NavResultWriter navResultWriter = this.k;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.getClass();
                AudioPickerScreenKt.b(navResultWriter, composer, RecomposeScopeImplKt.a(1));
                return unit;
            default:
                int intValue = num.intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    AudioPickerScreenKt.b(navResultWriter, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
        }
    }
}
