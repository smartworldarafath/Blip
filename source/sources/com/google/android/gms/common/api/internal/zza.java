package com.google.android.gms.common.api.internal;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zza extends Fragment {
    public final zzc j = new zzc();

    static {
        new WeakHashMap();
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.j.a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator it = this.j.a.values().iterator();
        if (!it.hasNext()) {
            return;
        }
        ((zap) ((LifecycleCallback) it.next())).getClass();
        throw null;
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        Bundle bundle2;
        super.onCreate(bundle);
        for (Map.Entry entry : this.j.a.entrySet()) {
            LifecycleCallback lifecycleCallback = (LifecycleCallback) entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle((String) entry.getKey());
            } else {
                bundle2 = null;
            }
            lifecycleCallback.b(bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        zzc zzcVar = this.j;
        zzcVar.getClass();
        Iterator it = zzcVar.a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        zzc zzcVar = this.j;
        zzcVar.getClass();
        Iterator it = zzcVar.a.values().iterator();
        while (it.hasNext()) {
            ((zaab) ((LifecycleCallback) it.next())).e();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        zzc zzcVar = this.j;
        if (bundle == null) {
            zzcVar.getClass();
            return;
        }
        Iterator it = zzcVar.a.entrySet().iterator();
        if (!it.hasNext()) {
            return;
        }
        Map.Entry entry = (Map.Entry) it.next();
        new Bundle();
        ((zap) ((LifecycleCallback) entry.getValue())).getClass();
        throw null;
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        zzc zzcVar = this.j;
        zzcVar.getClass();
        Iterator it = zzcVar.a.values().iterator();
        while (it.hasNext()) {
            zaab zaabVar = (zaab) ((LifecycleCallback) it.next());
            zaabVar.j = true;
            zaabVar.e();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        zzc zzcVar = this.j;
        zzcVar.getClass();
        Iterator it = zzcVar.a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).c();
        }
    }
}
