package com.google.firebase;

import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Qualified;
import java.util.concurrent.Executor;
import kotlinx.coroutines.ExecutorsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3<T> implements ComponentFactory {
    public static final FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3 j = new Object();

    @Override // com.google.firebase.components.ComponentFactory
    public final Object d(ComponentContainer componentContainer) {
        Object f = componentContainer.f(new Qualified(Blocking.class, Executor.class));
        f.getClass();
        return ExecutorsKt.a((Executor) f);
    }
}
