package net.blip.android.ui.dialogs;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.u;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.libblip.User;
import net.blip.libblip.User_DerivedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BlockUserConfirmationDialogKt {
    public static final void a(User user, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1197721287);
        if (gapComposer.h(user)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i | i2;
        if (gapComposer.h(function0)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            String a = User_DerivedKt.a(user);
            a.getClass();
            AlertDialogKt.a("Block " + a + "?", user.o + " (" + user.n + ") won't be able to send you things.\r\n" + User_DerivedKt.c(user) + " won’t know that you blocked them.", true, new Pair("Block", function0), new Pair("Cancel", function02), function02, gapComposer, 196992, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(user, function0, function02, i, 4);
        }
    }
}
