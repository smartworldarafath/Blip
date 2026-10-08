package io.sentry.featureflags;

import io.sentry.d;
import io.sentry.protocol.FeatureFlags;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FeatureFlagBuffer implements IFeatureFlagBuffer {
    public volatile CopyOnWriteArrayList a;

    @Override // io.sentry.featureflags.IFeatureFlagBuffer
    public final FeatureFlags c() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        if (!it.hasNext()) {
            return new FeatureFlags(arrayList);
        }
        it.next().getClass();
        d.i();
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, io.sentry.featureflags.IFeatureFlagBuffer, io.sentry.featureflags.FeatureFlagBuffer] */
    @Override // io.sentry.featureflags.IFeatureFlagBuffer
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final IFeatureFlagBuffer m16clone() {
        ?? obj = new Object();
        new ReentrantLock();
        obj.a = new CopyOnWriteArrayList(this.a);
        return obj;
    }
}
