package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import defpackage.u2;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoValue_SchedulerConfig_ConfigValue extends SchedulerConfig.ConfigValue {
    public final long a;
    public final long b;
    public final Set c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends SchedulerConfig.ConfigValue.Builder {
        public Long a;
        public Long b;
        public Set c;

        public final SchedulerConfig.ConfigValue a() {
            String str;
            if (this.a == null) {
                str = " delta";
            } else {
                str = "";
            }
            if (this.b == null) {
                str = str.concat(" maxAllowedDelay");
            }
            if (this.c == null) {
                str = str.concat(" flags");
            }
            if (str.isEmpty()) {
                return new AutoValue_SchedulerConfig_ConfigValue(this.a.longValue(), this.b.longValue(), this.c);
            }
            u2.l("Missing required properties:".concat(str));
            return null;
        }
    }

    public AutoValue_SchedulerConfig_ConfigValue(long j, long j2, Set set) {
        this.a = j;
        this.b = j2;
        this.c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig.ConfigValue) {
            AutoValue_SchedulerConfig_ConfigValue autoValue_SchedulerConfig_ConfigValue = (AutoValue_SchedulerConfig_ConfigValue) ((SchedulerConfig.ConfigValue) obj);
            if (this.a == autoValue_SchedulerConfig_ConfigValue.a && this.b == autoValue_SchedulerConfig_ConfigValue.b && this.c.equals(autoValue_SchedulerConfig_ConfigValue.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.b;
        return this.c.hashCode() ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.a + ", maxAllowedDelay=" + this.b + ", flags=" + this.c + "}";
    }
}
