package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TaskCompletionSource<TResult> {
    public final zzw a = new zzw();

    public final void a(Exception exc) {
        this.a.n(exc);
    }

    public final void b(Object obj) {
        this.a.m(obj);
    }

    public final boolean c(Exception exc) {
        zzw zzwVar = this.a;
        zzwVar.getClass();
        Preconditions.f(exc, "Exception must not be null");
        synchronized (zzwVar.a) {
            try {
                if (zzwVar.c) {
                    return false;
                }
                zzwVar.c = true;
                zzwVar.f = exc;
                zzwVar.b.b(zzwVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Object obj) {
        zzw zzwVar = this.a;
        synchronized (zzwVar.a) {
            try {
                if (zzwVar.c) {
                    return;
                }
                zzwVar.c = true;
                zzwVar.e = obj;
                zzwVar.b.b(zzwVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
