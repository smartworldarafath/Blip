package io.sentry.android.core;

import android.os.SystemClock;
import io.sentry.Integration;
import io.sentry.SentryOptions;
import io.sentry.android.fragment.FragmentLifecycleIntegration;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryAndroid {
    public static final long a = SystemClock.uptimeMillis();
    public static final AutoClosableReentrantLock b = new ReentrantLock();

    public static void a(SentryOptions sentryOptions, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Integration integration : sentryOptions.getIntegrations()) {
            if (z && (integration instanceof FragmentLifecycleIntegration)) {
                arrayList2.add(integration);
            }
            if (z2 && (integration instanceof SentryTimberIntegration)) {
                arrayList.add(integration);
            }
            if (integration instanceof SystemEventsBreadcrumbsIntegration) {
                arrayList3.add(integration);
            }
        }
        if (arrayList2.size() > 1) {
            for (int i = 0; i < arrayList2.size() - 1; i++) {
                sentryOptions.getIntegrations().remove((Integration) arrayList2.get(i));
            }
        }
        if (arrayList.size() > 1) {
            for (int i2 = 0; i2 < arrayList.size() - 1; i2++) {
                sentryOptions.getIntegrations().remove((Integration) arrayList.get(i2));
            }
        }
        if (arrayList3.size() > 1) {
            for (int i3 = 0; i3 < arrayList3.size() - 1; i3++) {
                sentryOptions.getIntegrations().remove((Integration) arrayList3.get(i3));
            }
        }
    }
}
