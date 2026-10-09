package net.blip.android.ui.dialogs;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.j1;
import defpackage.k8;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.libblip.Peer;
import net.blip.libblip.User;
import net.blip.libblip.User_DerivedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RemovePeerConfirmationDialogKt {
    public static final void a(Peer peer, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        boolean z;
        String str;
        String str2;
        int i3;
        int i4;
        int i5;
        peer.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1212389430);
        if ((i & 6) == 0) {
            if (gapComposer.h(peer)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function0)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function02)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            boolean z2 = peer instanceof Peer.User;
            if (z2) {
                String b = peer.b();
                b.getClass();
                str = "Remove " + b + "?";
            } else if (peer instanceof Peer.Device) {
                String b2 = peer.b();
                b2.getClass();
                str = "Remove " + b2 + "?";
            } else {
                k8.e();
                return;
            }
            if (z2) {
                User user = ((Peer.User) peer).j;
                user.getClass();
                str2 = user.o + " (" + user.n + ") won't show up in the list anymore.\r\n" + User_DerivedKt.c(user) + " won’t know that you removed them.";
            } else if (peer instanceof Peer.Device) {
                str2 = "The device will get signed out of Blip and removed from your account.";
            } else {
                k8.e();
                return;
            }
            AlertDialogKt.a(str, str2, true, new Pair("Remove", function0), new Pair("Cancel", function02), function02, gapComposer, ((i2 << 9) & 458752) | 384, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new j1(peer, function0, function02, i, 1);
        }
    }
}
