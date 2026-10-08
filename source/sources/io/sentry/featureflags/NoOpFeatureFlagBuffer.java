package io.sentry.featureflags;

import io.sentry.protocol.FeatureFlags;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpFeatureFlagBuffer implements IFeatureFlagBuffer {
    public static final NoOpFeatureFlagBuffer a = new Object();

    @Override // io.sentry.featureflags.IFeatureFlagBuffer
    public final FeatureFlags c() {
        return null;
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final /* bridge */ /* synthetic */ Object m17clone() {
        return a;
    }

    @Override // io.sentry.featureflags.IFeatureFlagBuffer
    public final IFeatureFlagBuffer clone() {
        return a;
    }
}
