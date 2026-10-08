package com.google.android.datatransport.runtime.dagger.internal;

import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DoubleCheck<T> implements Provider<T> {
    public static final Object c = new Object();
    public volatile Factory a;
    public volatile Object b;

    /* JADX WARN: Type inference failed for: r0v1, types: [javax.inject.Provider, com.google.android.datatransport.runtime.dagger.internal.DoubleCheck, java.lang.Object] */
    public static Provider a(Factory factory) {
        if (factory instanceof DoubleCheck) {
            return factory;
        }
        ?? obj = new Object();
        obj.b = c;
        obj.a = factory;
        return obj;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.b;
        Object obj3 = c;
        if (obj2 == obj3) {
            synchronized (this) {
                try {
                    obj = this.b;
                    if (obj == obj3) {
                        obj = this.a.get();
                        Object obj4 = this.b;
                        if (obj4 != obj3 && obj4 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.b = obj;
                        this.a = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return obj;
        }
        return obj2;
    }
}
