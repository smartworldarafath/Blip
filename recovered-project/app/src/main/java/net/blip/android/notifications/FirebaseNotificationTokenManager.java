package net.blip.android.notifications;

import defpackage.a7;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.FlowKt;
import net.blip.libblip.Core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FirebaseNotificationTokenManager {
    public static Object a(Core core, Continuation continuation) {
        return FlowKt.k(new FirebaseNotificationTokenManager$observeAuthChanges$$inlined$map$1(core.a), new a7(10)).a(new FirebaseNotificationTokenManager$observeAuthChanges$4(core), continuation);
    }
}
