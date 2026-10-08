package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InstanceFactory<T> implements Factory<T> {
    public final Object a;

    public InstanceFactory(Object obj) {
        this.a = obj;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return this.a;
    }
}
