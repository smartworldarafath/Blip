package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ DelegatingScheduledExecutorService k;
    public final /* synthetic */ Runnable l;
    public final /* synthetic */ DelegatingScheduledFuture.AnonymousClass1 m;

    public /* synthetic */ e(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, DelegatingScheduledFuture.AnonymousClass1 anonymousClass1, int i) {
        this.j = i;
        this.k = delegatingScheduledExecutorService;
        this.l = runnable;
        this.m = anonymousClass1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        final DelegatingScheduledFuture.AnonymousClass1 anonymousClass1 = this.m;
        final Runnable runnable = this.l;
        DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.k;
        switch (i) {
            case 0:
                final int i2 = 0;
                delegatingScheduledExecutorService.j.execute(new Runnable() { // from class: com.google.firebase.concurrent.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = i2;
                        DelegatingScheduledFuture.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        Runnable runnable2 = runnable;
                        switch (i3) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    DelegatingScheduledFuture delegatingScheduledFuture = DelegatingScheduledFuture.this;
                                    int i4 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture.k(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    DelegatingScheduledFuture delegatingScheduledFuture2 = DelegatingScheduledFuture.this;
                                    int i5 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture2.k(e2);
                                    return;
                                }
                            default:
                                DelegatingScheduledFuture delegatingScheduledFuture3 = DelegatingScheduledFuture.this;
                                try {
                                    runnable2.run();
                                    int i6 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture3.j(null);
                                    return;
                                } catch (Exception e3) {
                                    int i7 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture3.k(e3);
                                    return;
                                }
                        }
                    }
                });
                return;
            case 1:
                final int i3 = 2;
                delegatingScheduledExecutorService.j.execute(new Runnable() { // from class: com.google.firebase.concurrent.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i32 = i3;
                        DelegatingScheduledFuture.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        Runnable runnable2 = runnable;
                        switch (i32) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    DelegatingScheduledFuture delegatingScheduledFuture = DelegatingScheduledFuture.this;
                                    int i4 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture.k(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    DelegatingScheduledFuture delegatingScheduledFuture2 = DelegatingScheduledFuture.this;
                                    int i5 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture2.k(e2);
                                    return;
                                }
                            default:
                                DelegatingScheduledFuture delegatingScheduledFuture3 = DelegatingScheduledFuture.this;
                                try {
                                    runnable2.run();
                                    int i6 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture3.j(null);
                                    return;
                                } catch (Exception e3) {
                                    int i7 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture3.k(e3);
                                    return;
                                }
                        }
                    }
                });
                return;
            default:
                final int i4 = 1;
                delegatingScheduledExecutorService.j.execute(new Runnable() { // from class: com.google.firebase.concurrent.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i32 = i4;
                        DelegatingScheduledFuture.AnonymousClass1 anonymousClass12 = anonymousClass1;
                        Runnable runnable2 = runnable;
                        switch (i32) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    DelegatingScheduledFuture delegatingScheduledFuture = DelegatingScheduledFuture.this;
                                    int i42 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture.k(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    DelegatingScheduledFuture delegatingScheduledFuture2 = DelegatingScheduledFuture.this;
                                    int i5 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture2.k(e2);
                                    return;
                                }
                            default:
                                DelegatingScheduledFuture delegatingScheduledFuture3 = DelegatingScheduledFuture.this;
                                try {
                                    runnable2.run();
                                    int i6 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture3.j(null);
                                    return;
                                } catch (Exception e3) {
                                    int i7 = DelegatingScheduledFuture.r;
                                    delegatingScheduledFuture3.k(e3);
                                    return;
                                }
                        }
                    }
                });
                return;
        }
    }
}
