package com.google.android.gms.tasks;

import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzr {
    public final Object a = new Object();
    public ArrayDeque b;
    public boolean c;

    public final void a(zzq zzqVar) {
        synchronized (this.a) {
            try {
                if (this.b == null) {
                    this.b = new ArrayDeque();
                }
                this.b.add(zzqVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Task task) {
        zzq zzqVar;
        synchronized (this.a) {
            if (this.b != null && !this.c) {
                this.c = true;
                while (true) {
                    synchronized (this.a) {
                        try {
                            zzqVar = (zzq) this.b.poll();
                            if (zzqVar == null) {
                                this.c = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    zzqVar.b(task);
                }
            }
        }
    }
}
