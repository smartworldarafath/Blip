package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.auto.value.AutoValue;
import defpackage.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class EventStoreConfig {
    public static final AutoValue_EventStoreConfig a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.scheduling.persistence.AutoValue_EventStoreConfig$Builder] */
    static {
        String str;
        ?? obj = new Object();
        obj.a = 10485760L;
        obj.b = 200;
        obj.c = 10000;
        obj.d = 604800000L;
        obj.e = 81920;
        if (obj.a == null) {
            str = " maxStorageSizeInBytes";
        } else {
            str = "";
        }
        if (obj.b == null) {
            str = str.concat(" loadBatchSize");
        }
        if (obj.c == null) {
            str = str.concat(" criticalSectionEnterTimeoutMs");
        }
        if (obj.d == null) {
            str = str.concat(" eventCleanUpAge");
        }
        if (obj.e == null) {
            str = str.concat(" maxBlobByteSizePerRow");
        }
        if (str.isEmpty()) {
            a = new AutoValue_EventStoreConfig(obj.a.longValue(), obj.b.intValue(), obj.c.intValue(), obj.d.longValue(), obj.e.intValue());
        } else {
            u2.l("Missing required properties:".concat(str));
        }
    }
}
