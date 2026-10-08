package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzw<TResult> extends Task<TResult> {
    public final Object a = new Object();
    public final zzr b = new zzr();
    public boolean c;
    public volatile boolean d;
    public Object e;
    public Exception f;

    @Override // com.google.android.gms.tasks.Task
    public final Task a(OnCompleteListener onCompleteListener) {
        this.b.a(new zzj(TaskExecutors.a, onCompleteListener));
        q();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task b(Executor executor, OnCompleteListener onCompleteListener) {
        this.b.a(new zzj(executor, onCompleteListener));
        q();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task c(Executor executor, OnSuccessListener onSuccessListener) {
        this.b.a(new zzn(executor, onSuccessListener));
        q();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task d(Executor executor, Continuation continuation) {
        zzw zzwVar = new zzw();
        this.b.a(new zzd(executor, continuation, zzwVar));
        q();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task e(Executor executor, Continuation continuation) {
        zzw zzwVar = new zzw();
        this.b.a(new zzf(executor, continuation, zzwVar));
        q();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Exception f() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Object g() {
        Object obj;
        synchronized (this.a) {
            try {
                if (this.c) {
                    if (!this.d) {
                        Exception exc = this.f;
                        if (exc == null) {
                            obj = this.e;
                        } else {
                            throw new RuntimeException(exc);
                        }
                    } else {
                        throw new CancellationException("Task is already canceled.");
                    }
                } else {
                    throw new IllegalStateException("Task is not yet complete");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Object h() {
        Object obj;
        synchronized (this.a) {
            try {
                if (this.c) {
                    if (!this.d) {
                        boolean isInstance = IOException.class.isInstance(this.f);
                        Exception exc = this.f;
                        if (!isInstance) {
                            if (exc == null) {
                                obj = this.e;
                            } else {
                                throw new RuntimeException(exc);
                            }
                        } else {
                            throw ((Throwable) IOException.class.cast(exc));
                        }
                    } else {
                        throw new CancellationException("Task is already canceled.");
                    }
                } else {
                    throw new IllegalStateException("Task is not yet complete");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean i() {
        return this.d;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean j() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean k() {
        boolean z;
        synchronized (this.a) {
            try {
                z = false;
                if (this.c && !this.d && this.f == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task l(Executor executor, SuccessContinuation successContinuation) {
        zzw zzwVar = new zzw();
        this.b.a(new zzp(executor, successContinuation, zzwVar));
        q();
        return zzwVar;
    }

    public final void m(Object obj) {
        synchronized (this.a) {
            p();
            this.c = true;
            this.e = obj;
        }
        this.b.b(this);
    }

    public final void n(Exception exc) {
        Preconditions.f(exc, "Exception must not be null");
        synchronized (this.a) {
            p();
            this.c = true;
            this.f = exc;
        }
        this.b.b(this);
    }

    public final void o() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return;
                }
                this.c = true;
                this.d = true;
                this.b.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p() {
        String str;
        if (this.c) {
            if (j()) {
                Exception f = f();
                if (f == null) {
                    if (!k()) {
                        if (this.d) {
                            str = "cancellation";
                        } else {
                            str = "unknown issue";
                        }
                    } else {
                        str = "result ".concat(String.valueOf(g()));
                    }
                } else {
                    str = "failure";
                }
                throw new IllegalStateException("Complete with: ".concat(str), f);
            }
            throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
    }

    public final void q() {
        synchronized (this.a) {
            try {
                if (!this.c) {
                    return;
                }
                this.b.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
