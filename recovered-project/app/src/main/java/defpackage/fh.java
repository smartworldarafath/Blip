package defpackage;

import android.os.Build;
import androidx.compose.foundation.MagnifierElement;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactory;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.foundation.PlatformMagnifierFactoryApi29Impl;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class fh implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Density k;
    public final /* synthetic */ MutableState l;

    public /* synthetic */ fh(Density density, MutableState mutableState, int i) {
        this.j = i;
        this.k = density;
        this.l = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        PlatformMagnifierFactory platformMagnifierFactory;
        int i = this.j;
        MutableState mutableState = this.l;
        Density density = this.k;
        switch (i) {
            case 0:
                hc hcVar = new hc(2, (Function0) obj);
                fh fhVar = new fh(density, mutableState, 1);
                SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.a;
                if (Build.VERSION.SDK_INT == 28) {
                    platformMagnifierFactory = PlatformMagnifierFactoryApi28Impl.a;
                } else {
                    platformMagnifierFactory = PlatformMagnifierFactoryApi29Impl.a;
                }
                return new MagnifierElement(hcVar, fhVar, platformMagnifierFactory);
            default:
                mutableState.setValue(new IntSize((density.y0(DpSize.a(r7.a)) & 4294967295L) | (density.y0(DpSize.b(((DpSize) obj).a)) << 32)));
                return Unit.a;
        }
    }
}
