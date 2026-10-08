package io.sentry.featureflags;

import io.sentry.protocol.FeatureFlags;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SpanFeatureFlagBuffer implements IFeatureFlagBuffer {
    public final AutoClosableReentrantLock a = new ReentrantLock();

    @Override // io.sentry.featureflags.IFeatureFlagBuffer
    public final FeatureFlags c() {
        this.a.a().close();
        return null;
    }

    @Override // io.sentry.featureflags.IFeatureFlagBuffer
    public final IFeatureFlagBuffer clone() {
        return new SpanFeatureFlagBuffer();
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final Object m18clone() {
        return new SpanFeatureFlagBuffer();
    }
}
