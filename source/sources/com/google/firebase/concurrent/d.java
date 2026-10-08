package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements DelegatingScheduledFuture.Resolver {
    public final /* synthetic */ int a;
    public final /* synthetic */ DelegatingScheduledExecutorService b;
    public final /* synthetic */ Runnable c;
    public final /* synthetic */ long d;
    public final /* synthetic */ long e;
    public final /* synthetic */ TimeUnit f;

    public /* synthetic */ d(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, long j, long j2, TimeUnit timeUnit, int i) {
        this.a = i;
        this.b = delegatingScheduledExecutorService;
        this.c = runnable;
        this.d = j;
        this.e = j2;
        this.f = timeUnit;
    }

    @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
    public final ScheduledFuture a(DelegatingScheduledFuture.AnonymousClass1 anonymousClass1) {
        int i = this.a;
        Runnable runnable = this.c;
        DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.b;
        switch (i) {
            case 0:
                return delegatingScheduledExecutorService.k.scheduleAtFixedRate(new e(delegatingScheduledExecutorService, runnable, anonymousClass1, 0), this.d, this.e, this.f);
            default:
                return delegatingScheduledExecutorService.k.scheduleWithFixedDelay(new e(delegatingScheduledExecutorService, runnable, anonymousClass1, 2), this.d, this.e, this.f);
        }
    }
}
