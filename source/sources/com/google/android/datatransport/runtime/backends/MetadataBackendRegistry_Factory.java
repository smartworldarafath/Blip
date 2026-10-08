package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MetadataBackendRegistry_Factory implements Factory<MetadataBackendRegistry> {
    public final Provider a;
    public final CreationContextFactory_Factory b;

    public MetadataBackendRegistry_Factory(Provider provider, CreationContextFactory_Factory creationContextFactory_Factory) {
        this.a = provider;
        this.b = creationContextFactory_Factory;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new MetadataBackendRegistry((Context) this.a.get(), (CreationContextFactory) this.b.get());
    }
}
