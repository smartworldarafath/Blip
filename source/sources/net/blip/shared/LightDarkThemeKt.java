package net.blip.shared;

import android.content.res.Configuration;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.k8;
import defpackage.x9;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LightDarkThemeKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new x9(11));

    public static final boolean a(Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        int ordinal = ((LightDarkTheme) gapComposer.j(a)).ordinal();
        boolean z2 = false;
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    gapComposer.W(1005350400);
                    gapComposer.p(false);
                    z2 = true;
                } else {
                    gapComposer.W(725162693);
                    gapComposer.p(false);
                    k8.e();
                    return false;
                }
            } else {
                gapComposer.W(1005317701);
                gapComposer.p(false);
            }
        } else {
            gapComposer.W(725164640);
            if ((((Configuration) gapComposer.j(AndroidCompositionLocals_androidKt.a)).uiMode & 48) == 32) {
                z = true;
            } else {
                z = false;
            }
            gapComposer.p(false);
            z2 = z;
        }
        return !z2;
    }
}
