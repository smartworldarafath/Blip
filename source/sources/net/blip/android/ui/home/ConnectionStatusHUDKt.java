package net.blip.android.ui.home;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import net.blip.android.ui.components.HUDKt;
import net.blip.libblip.frontend.MessagingStatus;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConnectionStatusHUDKt {
    public static final void a(MessagingStatus messagingStatus, Composer composer, int i) {
        int i2;
        boolean z;
        messagingStatus.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(262244586);
        if (gapComposer.d(messagingStatus.ordinal())) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        boolean z2 = false;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Modifier h = PaddingKt.h(Modifier.Companion.b, 0.0f, 0.0f, 0.0f, 16.0f, 7);
            if (messagingStatus != MessagingStatus.o) {
                z2 = true;
            }
            HUDKt.a(h, z2, gapComposer, 3462);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new defpackage.d(i, 5, messagingStatus);
        }
    }
}
