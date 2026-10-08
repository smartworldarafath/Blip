package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoopVersionDetector implements IVersionDetector {
    public static final NoopVersionDetector a = new Object();

    @Override // io.sentry.IVersionDetector
    public final boolean a() {
        return false;
    }
}
