package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
class DelegatingScheduledFuture<V> extends AbstractResolvableFuture<V> implements ScheduledFuture<V> {
    public static final /* synthetic */ int r = 0;
    public final ScheduledFuture q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.firebase.concurrent.DelegatingScheduledFuture$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Resolver<T> {
        ScheduledFuture a(AnonymousClass1 anonymousClass1);
    }

    public DelegatingScheduledFuture(Resolver resolver) {
        this.q = resolver.a(new AnonymousClass1());
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public final void c() {
        this.q.cancel(l());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.q.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.q.getDelay(timeUnit);
    }
}
