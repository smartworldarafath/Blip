package io.sentry.android.core;

import io.sentry.IConnectionStatusProvider;
import io.sentry.SentryOptions;
import io.sentry.transport.ITransportGate;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidTransportGate implements ITransportGate {
    public final SentryOptions a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.AndroidTransportGate$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IConnectionStatusProvider.ConnectionStatus.values().length];
            a = iArr;
            try {
                iArr[IConnectionStatusProvider.ConnectionStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[IConnectionStatusProvider.ConnectionStatus.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[IConnectionStatusProvider.ConnectionStatus.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AndroidTransportGate(SentryAndroidOptions sentryAndroidOptions) {
        this.a = sentryAndroidOptions;
    }

    @Override // io.sentry.transport.ITransportGate
    public final boolean a() {
        int i = AnonymousClass1.a[this.a.getConnectionStatusProvider().p0().ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        return false;
    }
}
