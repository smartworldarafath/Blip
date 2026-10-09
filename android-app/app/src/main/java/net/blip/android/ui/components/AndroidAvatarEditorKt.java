package net.blip.android.ui.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.i0;
import defpackage.u;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.User;
import net.blip.shared.AvatarEditorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidAvatarEditorKt {
    public static final void a(Modifier modifier, Function1 function1, User user, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-743961986);
        if (gapComposer.h(function1)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i4 = i2 | i;
        if (gapComposer.h(user)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i5 = i4 | i3;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            AvatarEditorKt.a(user, function1, ComposableLambdaKt.b(-2065059213, new i0(0, modifier, user), gapComposer), gapComposer, (i5 & 112) | ((i5 >> 6) & 14) | 384);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(modifier, function1, user, i, 1);
        }
    }
}
