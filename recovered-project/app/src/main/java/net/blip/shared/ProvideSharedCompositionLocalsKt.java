package net.blip.shared;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.r7;
import defpackage.vc;
import net.blip.libblip.Core;
import net.blip.libblip.Flavor;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.SystemPaths;
import net.blip.libblip.frontend.State;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProvideSharedCompositionLocalsKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new vc(5));
    public static final DynamicProvidableCompositionLocal b = new DynamicProvidableCompositionLocal(new vc(6));
    public static final DynamicProvidableCompositionLocal c = new DynamicProvidableCompositionLocal(new vc(7));
    public static final DynamicProvidableCompositionLocal d = new DynamicProvidableCompositionLocal(new vc(8));

    public static final void a(Flavor flavor, SystemPaths systemPaths, HardwareInfo hardwareInfo, Core core, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        flavor.getClass();
        systemPaths.getClass();
        hardwareInfo.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1389085026);
        if (gapComposer.f(flavor)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i2 | i;
        if (gapComposer.f(systemPaths)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        if (gapComposer.f(hardwareInfo)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4;
        if (gapComposer.h(core)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i9 = i8 | i5;
        if ((i9 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            CompositionLocalKt.b(new ProvidedValue[]{a.b(flavor), b.b(systemPaths), c.b(hardwareInfo), d.b(core)}, composableLambdaImpl, gapComposer, 48);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r7(flavor, systemPaths, hardwareInfo, core, composableLambdaImpl, i, 5);
        }
    }

    public static final State b(ProvidableCompositionLocal providableCompositionLocal, Composer composer) {
        providableCompositionLocal.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        return (State) SnapshotStateKt.b(((Core) gapComposer.j(providableCompositionLocal)).a, gapComposer).getValue();
    }
}
