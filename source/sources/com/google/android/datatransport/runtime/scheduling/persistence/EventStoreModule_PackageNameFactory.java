package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EventStoreModule_PackageNameFactory implements Factory<String> {
    public final Provider a;

    public EventStoreModule_PackageNameFactory(Provider provider) {
        this.a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        String packageName = ((Context) this.a.get()).getPackageName();
        if (packageName != null) {
            return packageName;
        }
        io.sentry.d.f("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }
}
