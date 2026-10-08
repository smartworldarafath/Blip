package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SchedulingModule_WorkSchedulerFactory implements Factory<WorkScheduler> {
    public final Provider a;
    public final Provider b;
    public final SchedulingConfigModule_ConfigFactory c;

    public SchedulingModule_WorkSchedulerFactory(Provider provider, Provider provider2, SchedulingConfigModule_ConfigFactory schedulingConfigModule_ConfigFactory, TimeModule_UptimeClockFactory timeModule_UptimeClockFactory) {
        this.a = provider;
        this.b = provider2;
        this.c = schedulingConfigModule_ConfigFactory;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new JobInfoScheduler((Context) this.a.get(), (EventStore) this.b.get(), (SchedulerConfig) this.c.get());
    }
}
