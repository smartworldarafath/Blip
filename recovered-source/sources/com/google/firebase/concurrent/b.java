package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements DelegatingScheduledFuture.Resolver {
    public final /* synthetic */ int a;
    public final /* synthetic */ DelegatingScheduledExecutorService b;
    public final /* synthetic */ long c;
    public final /* synthetic */ TimeUnit d;
    public final /* synthetic */ Object e;

    public /* synthetic */ b(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Object obj, long j, TimeUnit timeUnit, int i) {
        this.a = i;
        this.b = delegatingScheduledExecutorService;
        this.e = obj;
        this.c = j;
        this.d = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture a(final DelegatingScheduledFuture.AnonymousClass1 anonymousClass1) {
        int i = this.a;
        TimeUnit timeUnit = this.d;
        long j = this.c;
        Object obj = this.e;
        final DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.b;
        switch (i) {
            case 0:
                return delegatingScheduledExecutorService.k.schedule(new e(delegatingScheduledExecutorService, (Runnable) obj, anonymousClass1, 1), j, timeUnit);
            default:
                final Callable callable = (Callable) obj;
                return delegatingScheduledExecutorService.k.schedule(new Callable() { // from class: com.google.firebase.concurrent.f
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return DelegatingScheduledExecutorService.this.j.submit(new a(1, callable, anonymousClass1));
                    }
                }, j, timeUnit);
        }
    }
}
