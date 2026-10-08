package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.u2;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zag extends zac {
    public final TaskApiCall b;
    public final TaskCompletionSource c;
    public final StatusExceptionMapper d;

    public zag(int i, TaskApiCall taskApiCall, TaskCompletionSource taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i);
        this.c = taskCompletionSource;
        this.b = taskApiCall;
        this.d = statusExceptionMapper;
        if (i == 2 && taskApiCall.b) {
            u2.g("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
            throw null;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        ApiException apiException;
        ((ApiExceptionMapper) this.d).getClass();
        if (status.l != null) {
            apiException = new ApiException(status);
        } else {
            apiException = new ApiException(status);
        }
        this.c.c(apiException);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        this.c.c(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void c(zaaa zaaaVar, boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        Map map = zaaaVar.b;
        TaskCompletionSource taskCompletionSource = this.c;
        map.put(taskCompletionSource, valueOf);
        taskCompletionSource.a.a(new zaz(zaaaVar, taskCompletionSource));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void d(zabk zabkVar) {
        TaskCompletionSource taskCompletionSource = this.c;
        try {
            TaskApiCall taskApiCall = this.b;
            ((zacn) taskApiCall).d.a.accept(zabkVar.e, taskCompletionSource);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a(zai.e(e2));
        } catch (RuntimeException e3) {
            taskCompletionSource.c(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] f(zabk zabkVar) {
        return this.b.a;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean g(zabk zabkVar) {
        return this.b.b;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final int h(zabk zabkVar) {
        return this.b.c;
    }
}
