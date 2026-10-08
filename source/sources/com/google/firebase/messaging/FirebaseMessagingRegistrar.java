package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.datatransport.TransportBackend;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.platforminfo.UserAgentPublisher;
import defpackage.j7;
import defpackage.u2;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Keep
/* loaded from: classes.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(Qualified qualified, ComponentContainer componentContainer) {
        FirebaseApp firebaseApp = (FirebaseApp) componentContainer.a(FirebaseApp.class);
        if (componentContainer.a(FirebaseInstanceIdInternal.class) == null) {
            return new FirebaseMessaging(firebaseApp, componentContainer.c(UserAgentPublisher.class), componentContainer.c(HeartBeatInfo.class), (FirebaseInstallationsApi) componentContainer.a(FirebaseInstallationsApi.class), componentContainer.b(qualified), (Subscriber) componentContainer.a(Subscriber.class));
        }
        io.sentry.d.i();
        return null;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<Component<?>> getComponents() {
        Qualified qualified = new Qualified(TransportBackend.class, TransportFactory.class);
        boolean z = false;
        Component.Builder builder = new Component.Builder(FirebaseMessaging.class, new Class[0]);
        builder.a = LIBRARY_NAME;
        builder.a(Dependency.a(FirebaseApp.class));
        builder.a(new Dependency(0, 0, FirebaseInstanceIdInternal.class));
        builder.a(new Dependency(0, 1, UserAgentPublisher.class));
        builder.a(new Dependency(0, 1, HeartBeatInfo.class));
        builder.a(Dependency.a(FirebaseInstallationsApi.class));
        builder.a(new Dependency(qualified, 0, 1));
        builder.a(Dependency.a(Subscriber.class));
        builder.f = new j7(qualified, 1);
        if (builder.d == 0) {
            z = true;
        }
        if (z) {
            builder.d = 1;
            return Arrays.asList(builder.b(), LibraryVersionComponent.a(LIBRARY_NAME, "25.1.2"));
        }
        u2.l("Instantiation type has already been set.");
        return null;
    }
}
