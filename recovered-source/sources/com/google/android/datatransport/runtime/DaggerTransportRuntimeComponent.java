package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory;
import com.google.android.datatransport.runtime.backends.CreationContextFactory_Factory;
import com.google.android.datatransport.runtime.backends.MetadataBackendRegistry_Factory;
import com.google.android.datatransport.runtime.dagger.internal.DoubleCheck;
import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_PackageNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DaggerTransportRuntimeComponent extends TransportRuntimeComponent {
    public Provider j;
    public InstanceFactory k;
    public Provider l;
    public SchemaManager_Factory m;
    public Provider n;
    public Provider o;
    public SchedulingModule_WorkSchedulerFactory p;
    public DefaultScheduler_Factory q;
    public Uploader_Factory r;
    public WorkInitializer_Factory s;
    public Provider t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public Context a;

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.google.android.datatransport.runtime.DaggerTransportRuntimeComponent] */
        /* JADX WARN: Type inference failed for: r15v11, types: [com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule_ConfigFactory, java.lang.Object] */
        public final DaggerTransportRuntimeComponent a() {
            Context context = this.a;
            if (context != null) {
                ?? obj = new Object();
                obj.j = DoubleCheck.a(ExecutionModule_ExecutorFactory.InstanceHolder.a);
                InstanceFactory instanceFactory = new InstanceFactory(context);
                obj.k = instanceFactory;
                obj.l = DoubleCheck.a(new MetadataBackendRegistry_Factory(obj.k, new CreationContextFactory_Factory(instanceFactory, TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a())));
                obj.m = new SchemaManager_Factory(obj.k);
                obj.n = DoubleCheck.a(new EventStoreModule_PackageNameFactory(obj.k));
                obj.o = DoubleCheck.a(new SQLiteEventStore_Factory(TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), obj.m, obj.n));
                SchedulingModule_WorkSchedulerFactory schedulingModule_WorkSchedulerFactory = new SchedulingModule_WorkSchedulerFactory(obj.k, obj.o, new Object(), TimeModule_UptimeClockFactory.a());
                obj.p = schedulingModule_WorkSchedulerFactory;
                Provider provider = obj.j;
                Provider provider2 = obj.l;
                Provider provider3 = obj.o;
                obj.q = new DefaultScheduler_Factory(provider, provider2, schedulingModule_WorkSchedulerFactory, provider3, provider3);
                InstanceFactory instanceFactory2 = obj.k;
                TimeModule_EventClockFactory a = TimeModule_EventClockFactory.a();
                TimeModule_UptimeClockFactory a2 = TimeModule_UptimeClockFactory.a();
                Provider provider4 = obj.o;
                obj.r = new Uploader_Factory(instanceFactory2, provider2, provider3, schedulingModule_WorkSchedulerFactory, provider, provider3, a, a2, provider4);
                obj.s = new WorkInitializer_Factory(obj.j, provider4, obj.p, provider4);
                obj.t = DoubleCheck.a(new TransportRuntime_Factory(TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), obj.q, obj.r, obj.s));
                return obj;
            }
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
    }
}
