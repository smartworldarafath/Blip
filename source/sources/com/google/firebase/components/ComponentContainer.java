package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ComponentContainer {
    default Object a(Class cls) {
        return f(Qualified.a(cls));
    }

    Provider b(Qualified qualified);

    default Provider c(Class cls) {
        return b(Qualified.a(cls));
    }

    default Set d(Qualified qualified) {
        return (Set) e(qualified).get();
    }

    Provider e(Qualified qualified);

    default Object f(Qualified qualified) {
        Provider b = b(qualified);
        if (b == null) {
            return null;
        }
        return b.get();
    }
}
