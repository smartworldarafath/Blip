package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import defpackage.f7;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Provider k;
    public final /* synthetic */ Provider l;

    public /* synthetic */ b(Provider provider, Provider provider2, int i) {
        this.j = i;
        this.l = provider;
        this.k = provider2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f7 f7Var;
        switch (this.j) {
            case 0:
                OptionalProvider optionalProvider = (OptionalProvider) this.l;
                Provider provider = this.k;
                if (optionalProvider.b == OptionalProvider.d) {
                    synchronized (optionalProvider) {
                        f7Var = optionalProvider.a;
                        optionalProvider.a = null;
                        optionalProvider.b = provider;
                    }
                    f7Var.getClass();
                    return;
                }
                u2.l("provide() can be called only once.");
                return;
            default:
                LazySet lazySet = (LazySet) this.l;
                Provider provider2 = this.k;
                synchronized (lazySet) {
                    try {
                        if (lazySet.b == null) {
                            lazySet.a.add(provider2);
                        } else {
                            lazySet.b.add(provider2.get());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
