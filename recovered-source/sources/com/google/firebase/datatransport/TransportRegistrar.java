package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import defpackage.fe;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Keep
/* loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    public static /* synthetic */ TransportFactory lambda$getComponents$0(ComponentContainer componentContainer) {
        TransportRuntime.b((Context) componentContainer.a(Context.class));
        return TransportRuntime.a().c(CCTDestination.f);
    }

    public static /* synthetic */ TransportFactory lambda$getComponents$1(ComponentContainer componentContainer) {
        TransportRuntime.b((Context) componentContainer.a(Context.class));
        return TransportRuntime.a().c(CCTDestination.f);
    }

    public static /* synthetic */ TransportFactory lambda$getComponents$2(ComponentContainer componentContainer) {
        TransportRuntime.b((Context) componentContainer.a(Context.class));
        return TransportRuntime.a().c(CCTDestination.e);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        Component.Builder builder = new Component.Builder(TransportFactory.class, new Class[0]);
        builder.a = LIBRARY_NAME;
        builder.a(Dependency.a(Context.class));
        builder.f = new fe(12);
        Component b = builder.b();
        Component.Builder a = Component.a(new Qualified(LegacyTransportBackend.class, TransportFactory.class));
        a.a(Dependency.a(Context.class));
        a.f = new fe(13);
        Component b2 = a.b();
        Component.Builder a2 = Component.a(new Qualified(TransportBackend.class, TransportFactory.class));
        a2.a(Dependency.a(Context.class));
        a2.f = new fe(14);
        return Arrays.asList(b, b2, a2.b(), LibraryVersionComponent.a(LIBRARY_NAME, "18.2.0"));
    }
}
