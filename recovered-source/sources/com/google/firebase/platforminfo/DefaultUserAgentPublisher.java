package com.google.firebase.platforminfo;

import com.google.firebase.components.Component;
import com.google.firebase.components.Dependency;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultUserAgentPublisher implements UserAgentPublisher {
    public final String a;
    public final GlobalLibraryVersionRegistrar b;

    public DefaultUserAgentPublisher(Set set, GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar) {
        this.a = c(set);
        this.b = globalLibraryVersionRegistrar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    public static Component a() {
        Component.Builder builder = new Component.Builder(UserAgentPublisher.class, new Class[0]);
        builder.a(new Dependency(2, 0, LibraryVersion.class));
        builder.f = new Object();
        return builder.b();
    }

    public static String c(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            LibraryVersion libraryVersion = (LibraryVersion) it.next();
            sb.append(((AutoValue_LibraryVersion) libraryVersion).a);
            sb.append('/');
            sb.append(((AutoValue_LibraryVersion) libraryVersion).b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public final String b() {
        Set unmodifiableSet;
        Set unmodifiableSet2;
        GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar = this.b;
        synchronized (globalLibraryVersionRegistrar.a) {
            unmodifiableSet = Collections.unmodifiableSet(globalLibraryVersionRegistrar.a);
        }
        boolean isEmpty = unmodifiableSet.isEmpty();
        String str = this.a;
        if (isEmpty) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(' ');
        synchronized (globalLibraryVersionRegistrar.a) {
            unmodifiableSet2 = Collections.unmodifiableSet(globalLibraryVersionRegistrar.a);
        }
        sb.append(c(unmodifiableSet2));
        return sb.toString();
    }
}
