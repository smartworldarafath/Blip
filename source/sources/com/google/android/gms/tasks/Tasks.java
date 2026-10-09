package com.google.android.gms.tasks;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.u2;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Tasks {
    public static Object a(Task task) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            Looper myLooper = Looper.myLooper();
            if (myLooper != null && Objects.equals(myLooper.getThread().getName(), "GoogleApiHandler")) {
                u2.l("Must not be called on GoogleApiHandler thread.");
                return null;
            }
            Preconditions.f(task, "Task must not be null");
            if (task.j()) {
                return f(task);
            }
            zzaa zzaaVar = new zzaa();
            Executor executor = TaskExecutors.b;
            task.c(executor, zzaaVar);
            zzw zzwVar = (zzw) task;
            zzr zzrVar = zzwVar.b;
            zzrVar.a(new zzl(executor, zzaaVar));
            zzwVar.q();
            zzrVar.a(new zzh(executor, zzaaVar));
            zzwVar.q();
            zzaaVar.a.await();
            return f(task);
        }
        u2.l("Must not be called on the main application thread");
        return null;
    }

    public static Object b(Task task, long j) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            Looper myLooper = Looper.myLooper();
            if (myLooper != null && Objects.equals(myLooper.getThread().getName(), "GoogleApiHandler")) {
                u2.l("Must not be called on GoogleApiHandler thread.");
                return null;
            }
            Preconditions.f(task, "Task must not be null");
            TimeUnit timeUnit = TimeUnit.SECONDS;
            Preconditions.f(timeUnit, "TimeUnit must not be null");
            if (task.j()) {
                return f(task);
            }
            zzaa zzaaVar = new zzaa();
            Executor executor = TaskExecutors.b;
            task.c(executor, zzaaVar);
            zzw zzwVar = (zzw) task;
            zzr zzrVar = zzwVar.b;
            zzrVar.a(new zzl(executor, zzaaVar));
            zzwVar.q();
            zzrVar.a(new zzh(executor, zzaaVar));
            zzwVar.q();
            if (zzaaVar.a.await(j, timeUnit)) {
                return f(task);
            }
            throw new TimeoutException("Timed out waiting for Task");
        }
        u2.l("Must not be called on the main application thread");
        return null;
    }

    public static Task c(Executor executor, Callable callable) {
        Preconditions.f(executor, "Executor must not be null");
        zzw zzwVar = new zzw();
        executor.execute(new zzx(zzwVar, callable));
        return zzwVar;
    }

    public static Task d(Exception exc) {
        zzw zzwVar = new zzw();
        zzwVar.n(exc);
        return zzwVar;
    }

    public static Task e(Object obj) {
        zzw zzwVar = new zzw();
        zzwVar.m(obj);
        return zzwVar;
    }

    public static Object f(Task task) {
        if (task.k()) {
            return task.g();
        }
        if (((zzw) task).d) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.f());
    }
}
