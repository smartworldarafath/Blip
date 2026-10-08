package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzs {
    public final int a;
    public final TaskCompletionSource b = new TaskCompletionSource();
    public final int c;
    public final Bundle d;

    public zzs(int i, int i2, Bundle bundle) {
        this.a = i;
        this.c = i2;
        this.d = bundle;
    }

    public abstract boolean a();

    public abstract void b(Bundle bundle);

    public final void c(Bundle bundle) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String zzsVar = toString();
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(zzsVar.length() + 16 + valueOf.length());
            sb.append("Finishing ");
            sb.append(zzsVar);
            sb.append(" with ");
            sb.append(valueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.b.b(bundle);
    }

    public final void d(zzt zztVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String zzsVar = toString();
            String obj = zztVar.toString();
            StringBuilder sb = new StringBuilder(zzsVar.length() + 14 + obj.length());
            sb.append("Failing ");
            sb.append(zzsVar);
            sb.append(" with ");
            sb.append(obj);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.b.a(zztVar);
    }

    public final String toString() {
        int i = this.c;
        int length = String.valueOf(i).length();
        int i2 = this.a;
        int length2 = String.valueOf(i2).length();
        boolean a = a();
        StringBuilder sb = new StringBuilder(length + 19 + length2 + 8 + String.valueOf(a).length() + 1);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(a);
        sb.append("}");
        return sb.toString();
    }
}
