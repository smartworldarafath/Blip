package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SchemaManager_Factory implements Factory<SchemaManager> {
    public final Provider a;

    public SchemaManager_Factory(Provider provider) {
        this.a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SchemaManager(Integer.valueOf(SchemaManager.m).intValue(), (Context) this.a.get(), "com.google.android.datatransport.events");
    }
}
