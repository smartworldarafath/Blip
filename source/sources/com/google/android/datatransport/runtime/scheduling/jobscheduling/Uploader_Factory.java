package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Uploader_Factory implements Factory<Uploader> {
    public final Provider a;
    public final Provider b;
    public final Provider c;
    public final SchedulingModule_WorkSchedulerFactory d;
    public final Provider e;
    public final Provider f;
    public final Provider g;

    public Uploader_Factory(Provider provider, Provider provider2, Provider provider3, SchedulingModule_WorkSchedulerFactory schedulingModule_WorkSchedulerFactory, Provider provider4, Provider provider5, TimeModule_EventClockFactory timeModule_EventClockFactory, TimeModule_UptimeClockFactory timeModule_UptimeClockFactory, Provider provider6) {
        this.a = provider;
        this.b = provider2;
        this.c = provider3;
        this.d = schedulingModule_WorkSchedulerFactory;
        this.e = provider4;
        this.f = provider5;
        this.g = provider6;
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    @Override // javax.inject.Provider
    public final Object get() {
        return new Uploader((Context) this.a.get(), (BackendRegistry) this.b.get(), (EventStore) this.c.get(), (WorkScheduler) this.d.get(), (Executor) this.e.get(), (SynchronizationGuard) this.f.get(), new Object(), new Object(), (ClientHealthMetricsStore) this.g.get());
    }
}
