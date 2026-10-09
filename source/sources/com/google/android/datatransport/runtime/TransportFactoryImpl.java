package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import defpackage.f7;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransportFactoryImpl implements TransportFactory {
    public final Set a;
    public final TransportContext b;
    public final TransportRuntime c;

    public TransportFactoryImpl(Set set, TransportContext transportContext, TransportRuntime transportRuntime) {
        this.a = set;
        this.b = transportContext;
        this.c = transportRuntime;
    }

    @Override // com.google.android.datatransport.TransportFactory
    public final Transport a(Encoding encoding, f7 f7Var) {
        Set set = this.a;
        if (set.contains(encoding)) {
            return new TransportImpl(this.b, encoding, f7Var, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", encoding, set));
    }
}
