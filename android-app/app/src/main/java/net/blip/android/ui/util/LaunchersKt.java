package net.blip.android.ui.util;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import com.google.accompanist.permissions.PermissionState;
import com.google.accompanist.permissions.PermissionStateKt;
import com.google.accompanist.permissions.PermissionStatus;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LaunchersKt {
    public static final SuspendingPermissionState a(String str, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = ChannelKt.a(0, 7, null);
            gapComposer.g0(K);
        }
        Channel channel = (Channel) K;
        boolean h = gapComposer.h(channel);
        Object K2 = gapComposer.K();
        if (h || K2 == composer$Companion$Empty$1) {
            K2 = new a(1, channel);
            gapComposer.g0(K2);
        }
        PermissionState a = PermissionStateKt.a(str, (Function1) K2, gapComposer);
        PermissionStatus a2 = a.a();
        boolean f = gapComposer.f(a) | gapComposer.h(channel);
        Object K3 = gapComposer.K();
        if (f || K3 == composer$Companion$Empty$1) {
            K3 = new LaunchersKt$rememberSuspendingPermissionState$1$1(a, channel, null);
            gapComposer.g0(K3);
        }
        return new SuspendingPermissionState(a2, (Function1) K3);
    }
}
