package com.google.firebase.platforminfo;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import defpackage.d5;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LibraryVersionComponent {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface VersionExtractor<T> {
        String f(Context context);
    }

    public static Component a(String str, String str2) {
        AutoValue_LibraryVersion autoValue_LibraryVersion = new AutoValue_LibraryVersion(str, str2);
        Component.Builder builder = new Component.Builder(LibraryVersion.class, new Class[0]);
        builder.e = 1;
        builder.f = new d5(0, autoValue_LibraryVersion);
        return builder.b();
    }

    public static Component b(final String str, final VersionExtractor versionExtractor) {
        Component.Builder builder = new Component.Builder(LibraryVersion.class, new Class[0]);
        builder.e = 1;
        builder.a(Dependency.a(Context.class));
        builder.f = new ComponentFactory() { // from class: com.google.firebase.platforminfo.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object d(ComponentContainer componentContainer) {
                return new AutoValue_LibraryVersion(str, versionExtractor.f((Context) componentContainer.a(Context.class)));
            }
        };
        return builder.b();
    }
}
