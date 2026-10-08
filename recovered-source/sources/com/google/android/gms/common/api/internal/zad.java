package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zad extends zac {
    public final TaskCompletionSource b;

    public zad(TaskCompletionSource taskCompletionSource) {
        super(4);
        this.b = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        this.b.c(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        this.b.c(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void d(zabk zabkVar) {
        try {
            i(zabkVar);
        } catch (DeadObjectException e) {
            a(zai.e(e));
            throw e;
        } catch (RemoteException e2) {
            a(zai.e(e2));
        } catch (RuntimeException e3) {
            this.b.c(e3);
        }
    }

    public abstract void i(zabk zabkVar);
}
