package net.blip.android.ui.navigation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.v3;
import kotlin.jvm.functions.Function3;
import net.blip.libblip.Device;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.frontend.Auth;
import net.blip.libblip.frontend.State;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AuthScopeKt {
    public static final void a(Function3 function3, Composer composer, int i) {
        boolean z;
        RecomposeScopeImpl r;
        v3 v3Var;
        User b;
        function3.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1069349643);
        if ((i & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            State b2 = ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer);
            User b3 = State_DerivedKt.b(b2);
            if (b3 == null) {
                r = gapComposer.r();
                if (r != null) {
                    v3Var = new v3(function3, i, 0);
                } else {
                    return;
                }
            } else {
                Auth auth = b2.r;
                Device device = null;
                if (auth != null && (b = State_DerivedKt.b(b2)) != null) {
                    device = (Device) b.x.get(auth.p);
                }
                if (device == null) {
                    r = gapComposer.r();
                    if (r != null) {
                        v3Var = new v3(function3, i, 1);
                    } else {
                        return;
                    }
                } else {
                    function3.f(new AuthScope(b3, device), gapComposer, 48);
                }
            }
            r.d = v3Var;
        }
        gapComposer.Q();
        r = gapComposer.r();
        if (r != null) {
            v3Var = new v3(function3, i, 2);
            r.d = v3Var;
        }
    }
}
