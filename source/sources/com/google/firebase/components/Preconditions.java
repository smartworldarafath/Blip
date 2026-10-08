package com.google.firebase.components;

import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Preconditions {
    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        d.f(str);
    }
}
