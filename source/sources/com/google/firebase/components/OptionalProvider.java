package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import defpackage.f7;
import defpackage.q5;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class OptionalProvider<T> implements Provider<T> {
    public static final f7 c = new f7(13);
    public static final q5 d = new q5(1);
    public f7 a;
    public volatile Provider b;

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        return this.b.get();
    }
}
