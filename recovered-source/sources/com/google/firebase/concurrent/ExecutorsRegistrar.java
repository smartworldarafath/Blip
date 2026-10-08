package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Lazy;
import com.google.firebase.components.Qualified;
import com.google.firebase.inject.Provider;
import defpackage.f7;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"ThreadPoolCreation"})
/* loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {
    public static final Lazy a;
    public static final Lazy b;
    public static final Lazy c;
    public static final Lazy d;

    static {
        final int i = 0;
        a = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.a;
                        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        detectNetwork.detectResourceMismatches();
                        detectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, detectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        Lazy lazy3 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
        final int i2 = 1;
        b = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i2) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.a;
                        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        detectNetwork.detectResourceMismatches();
                        detectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, detectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        Lazy lazy3 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
        final int i3 = 2;
        c = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i3) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.a;
                        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        detectNetwork.detectResourceMismatches();
                        detectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, detectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        Lazy lazy3 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
        final int i4 = 3;
        d = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i4) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.a;
                        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        detectNetwork.detectResourceMismatches();
                        detectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, detectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        Lazy lazy3 = ExecutorsRegistrar.a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        Component.Builder builder = new Component.Builder(new Qualified(Background.class, ScheduledExecutorService.class), new Qualified[]{new Qualified(Background.class, ExecutorService.class), new Qualified(Background.class, Executor.class)});
        builder.f = new f7(19);
        Component b2 = builder.b();
        Component.Builder builder2 = new Component.Builder(new Qualified(Blocking.class, ScheduledExecutorService.class), new Qualified[]{new Qualified(Blocking.class, ExecutorService.class), new Qualified(Blocking.class, Executor.class)});
        builder2.f = new f7(20);
        Component b3 = builder2.b();
        Component.Builder builder3 = new Component.Builder(new Qualified(Lightweight.class, ScheduledExecutorService.class), new Qualified[]{new Qualified(Lightweight.class, ExecutorService.class), new Qualified(Lightweight.class, Executor.class)});
        builder3.f = new f7(21);
        Component b4 = builder3.b();
        Component.Builder a2 = Component.a(new Qualified(UiThread.class, Executor.class));
        a2.f = new f7(22);
        return Arrays.asList(b2, b3, b4, a2.b());
    }
}
