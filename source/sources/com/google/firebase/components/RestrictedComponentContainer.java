package com.google.firebase.components;

import com.google.firebase.events.Publisher;
import com.google.firebase.inject.Provider;
import defpackage.fe;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class RestrictedComponentContainer implements ComponentContainer {
    public final Set a;
    public final Set b;
    public final Set c;
    public final Set d;
    public final ComponentContainer e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class RestrictedPublisher implements Publisher {
    }

    public RestrictedComponentContainer(Component component, ComponentContainer componentContainer) {
        boolean z;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        Set<Dependency> set = component.c;
        Set set2 = component.g;
        for (Dependency dependency : set) {
            int i = dependency.c;
            int i2 = dependency.b;
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            Qualified qualified = dependency.a;
            if (z) {
                if (i2 == 2) {
                    hashSet4.add(qualified);
                } else {
                    hashSet.add(qualified);
                }
            } else if (i == 2) {
                hashSet3.add(qualified);
            } else if (i2 == 2) {
                hashSet5.add(qualified);
            } else {
                hashSet2.add(qualified);
            }
        }
        if (!set2.isEmpty()) {
            hashSet.add(Qualified.a(Publisher.class));
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        Collections.unmodifiableSet(hashSet3);
        this.c = Collections.unmodifiableSet(hashSet4);
        this.d = Collections.unmodifiableSet(hashSet5);
        this.e = componentContainer;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Object a(Class cls) {
        if (this.a.contains(Qualified.a(cls))) {
            Object a = this.e.a(cls);
            if (!cls.equals(Publisher.class)) {
                return a;
            }
            return new Object();
        }
        fe.p("Attempting to request an undeclared dependency ", cls, ".");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider b(Qualified qualified) {
        if (this.b.contains(qualified)) {
            return this.e.b(qualified);
        }
        fe.p("Attempting to request an undeclared dependency Provider<", qualified, ">.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider c(Class cls) {
        return b(Qualified.a(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Set d(Qualified qualified) {
        if (this.c.contains(qualified)) {
            return this.e.d(qualified);
        }
        fe.p("Attempting to request an undeclared dependency Set<", qualified, ">.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider e(Qualified qualified) {
        if (this.d.contains(qualified)) {
            return this.e.e(qualified);
        }
        fe.p("Attempting to request an undeclared dependency Provider<Set<", qualified, ">>.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Object f(Qualified qualified) {
        if (this.a.contains(qualified)) {
            return this.e.f(qualified);
        }
        fe.p("Attempting to request an undeclared dependency ", qualified, ".");
        return null;
    }
}
