package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.heartbeatinfo.HeartBeatConsumerComponent;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import defpackage.k8;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Keep
/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    public static FirebaseInstallationsApi lambda$getComponents$0(ComponentContainer componentContainer) {
        return new FirebaseInstallations((FirebaseApp) componentContainer.a(FirebaseApp.class), componentContainer.c(HeartBeatController.class), (ExecutorService) componentContainer.f(new Qualified(Background.class, ExecutorService.class)), FirebaseExecutors.a((Executor) componentContainer.f(new Qualified(Blocking.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        Component.Builder builder = new Component.Builder(FirebaseInstallationsApi.class, new Class[0]);
        builder.a = LIBRARY_NAME;
        builder.a(Dependency.a(FirebaseApp.class));
        builder.a(new Dependency(0, 1, HeartBeatController.class));
        builder.a(new Dependency(new Qualified(Background.class, ExecutorService.class), 1, 0));
        builder.a(new Dependency(new Qualified(Blocking.class, Executor.class), 1, 0));
        builder.f = new k8(3);
        return Arrays.asList(builder.b(), HeartBeatConsumerComponent.a(), LibraryVersionComponent.a(LIBRARY_NAME, "19.1.2"));
    }
}
