package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.auto.value.AutoValue;
import defpackage.u2;
import io.sentry.d;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class SchedulerConfig {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public Clock a;
        public HashMap b;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class ConfigValue {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @AutoValue.Builder
        /* loaded from: classes.dex */
        public static abstract class Builder {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Flag {
        public static final Flag j;
        public static final Flag k;
        public static final Flag l;
        public static final /* synthetic */ Flag[] m;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag] */
        static {
            ?? r0 = new Enum("NETWORK_UNMETERED", 0);
            j = r0;
            ?? r1 = new Enum("DEVICE_IDLE", 1);
            k = r1;
            ?? r2 = new Enum("DEVICE_CHARGING", 2);
            l = r2;
            m = new Flag[]{r0, r1, r2};
        }

        public static Flag valueOf(String str) {
            return (Flag) Enum.valueOf(Flag.class, str);
        }

        public static Flag[] values() {
            return (Flag[]) m.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue$Builder, java.lang.Object] */
    public static SchedulerConfig a(Clock clock) {
        ?? obj = new Object();
        obj.b = new HashMap();
        ?? obj2 = new Object();
        Set set = Collections.EMPTY_SET;
        if (set != null) {
            obj2.c = set;
            obj2.a = 30000L;
            obj2.b = 86400000L;
            obj.b.put(Priority.j, obj2.a());
            ?? obj3 = new Object();
            if (set != null) {
                obj3.c = set;
                obj3.a = 1000L;
                obj3.b = 86400000L;
                obj.b.put(Priority.l, obj3.a());
                ?? obj4 = new Object();
                if (set != null) {
                    obj4.c = set;
                    obj4.a = 86400000L;
                    obj4.b = 86400000L;
                    Set unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(Flag.k)));
                    if (unmodifiableSet != null) {
                        obj4.c = unmodifiableSet;
                        obj.b.put(Priority.k, obj4.a());
                        obj.a = clock;
                        if (clock != null) {
                            if (obj.b.keySet().size() >= Priority.values().length) {
                                HashMap hashMap = obj.b;
                                obj.b = new HashMap();
                                return new AutoValue_SchedulerConfig(obj.a, hashMap);
                            }
                            u2.l("Not all priorities have been configured");
                            return null;
                        }
                        d.f("missing required property: clock");
                        return null;
                    }
                    d.f("Null flags");
                    return null;
                }
                d.f("Null flags");
                return null;
            }
            d.f("Null flags");
            return null;
        }
        d.f("Null flags");
        return null;
    }

    public final long b(Priority priority, long j, int i) {
        long j2;
        AutoValue_SchedulerConfig autoValue_SchedulerConfig = (AutoValue_SchedulerConfig) this;
        long a = j - autoValue_SchedulerConfig.a.a();
        ConfigValue configValue = (ConfigValue) autoValue_SchedulerConfig.b.get(priority);
        long j3 = ((AutoValue_SchedulerConfig_ConfigValue) configValue).a;
        int i2 = i - 1;
        if (j3 > 1) {
            j2 = j3;
        } else {
            j2 = 2;
        }
        return Math.min(Math.max((long) (Math.pow(3.0d, i2) * j3 * Math.max(1.0d, Math.log(10000.0d) / Math.log(j2 * i2))), a), ((AutoValue_SchedulerConfig_ConfigValue) configValue).b);
    }
}
