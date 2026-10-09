package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Task<TResult> {
    public abstract Task a(OnCompleteListener onCompleteListener);

    public abstract Task b(Executor executor, OnCompleteListener onCompleteListener);

    public abstract Task c(Executor executor, OnSuccessListener onSuccessListener);

    public abstract Task d(Executor executor, Continuation continuation);

    public abstract Task e(Executor executor, Continuation continuation);

    public abstract Exception f();

    public abstract Object g();

    public abstract Object h();

    public abstract boolean i();

    public abstract boolean j();

    public abstract boolean k();

    public abstract Task l(Executor executor, SuccessContinuation successContinuation);
}
