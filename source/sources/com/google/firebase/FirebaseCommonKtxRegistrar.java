package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Keep
/* loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        Component.Builder a = Component.a(new Qualified(Background.class, CoroutineDispatcher.class));
        a.a(new Dependency(new Qualified(Background.class, Executor.class), 1, 0));
        a.f = FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$1.j;
        Component b = a.b();
        Component.Builder a2 = Component.a(new Qualified(Lightweight.class, CoroutineDispatcher.class));
        a2.a(new Dependency(new Qualified(Lightweight.class, Executor.class), 1, 0));
        a2.f = FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$2.j;
        Component b2 = a2.b();
        Component.Builder a3 = Component.a(new Qualified(Blocking.class, CoroutineDispatcher.class));
        a3.a(new Dependency(new Qualified(Blocking.class, Executor.class), 1, 0));
        a3.f = FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3.j;
        Component b3 = a3.b();
        Component.Builder a4 = Component.a(new Qualified(UiThread.class, CoroutineDispatcher.class));
        a4.a(new Dependency(new Qualified(UiThread.class, Executor.class), 1, 0));
        a4.f = FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$4.j;
        return CollectionsKt.C(b, b2, b3, a4.b());
    }
}
