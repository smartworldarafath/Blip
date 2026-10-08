package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkInitializer_Factory implements Factory<WorkInitializer> {
    public final Provider a;
    public final Provider b;
    public final Provider c;
    public final Provider d;

    public WorkInitializer_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new WorkInitializer((Executor) this.a.get(), (EventStore) this.b.get(), (WorkScheduler) this.c.get(), (SynchronizationGuard) this.d.get());
    }
}
