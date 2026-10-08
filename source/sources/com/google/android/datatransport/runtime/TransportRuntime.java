package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.AutoValue_TransportContext;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import defpackage.e;
import defpackage.u2;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TransportRuntime {
    public static volatile DaggerTransportRuntimeComponent e;
    public final Clock a;
    public final Clock b;
    public final Scheduler c;
    public final Uploader d;

    public TransportRuntime(Clock clock, Clock clock2, Scheduler scheduler, Uploader uploader, WorkInitializer workInitializer) {
        this.a = clock;
        this.b = clock2;
        this.c = scheduler;
        this.d = uploader;
        workInitializer.a.execute(new e(19, workInitializer));
    }

    public static TransportRuntime a() {
        DaggerTransportRuntimeComponent daggerTransportRuntimeComponent = e;
        if (daggerTransportRuntimeComponent != null) {
            return (TransportRuntime) daggerTransportRuntimeComponent.t.get();
        }
        u2.l("Not initialized!");
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.datatransport.runtime.DaggerTransportRuntimeComponent$Builder] */
    public static void b(Context context) {
        if (e == null) {
            synchronized (TransportRuntime.class) {
                try {
                    if (e == null) {
                        ?? obj = new Object();
                        context.getClass();
                        obj.a = context;
                        e = obj.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final TransportFactory c(Destination destination) {
        Set singleton;
        if (destination instanceof EncodedDestination) {
            singleton = Collections.unmodifiableSet(CCTDestination.d);
        } else {
            singleton = Collections.singleton(new Encoding("proto"));
        }
        TransportContext.Builder a = TransportContext.a();
        destination.getClass();
        AutoValue_TransportContext.Builder builder = (AutoValue_TransportContext.Builder) a;
        builder.a = "cct";
        CCTDestination cCTDestination = (CCTDestination) destination;
        String str = cCTDestination.a;
        String str2 = cCTDestination.b;
        if (str2 == null) {
            str2 = "";
        }
        builder.b = ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8"));
        return new TransportFactoryImpl(singleton, builder.a(), this);
    }
}
