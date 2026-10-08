package net.blip.android.notifications;

import android.content.Context;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationPermissionObserver {
    public static Flow a(Context context) {
        return FlowKt.i(FlowKt.p(new NotificationPermissionObserver$areNotificationsEnabled$1(context, null)));
    }
}
