package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Preconditions {
    public static void a(String str, boolean z) {
        if (z) {
            return;
        }
        u2.g(str);
    }

    public static void b(Handler handler) {
        String str;
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            if (myLooper != null) {
                str = myLooper.getThread().getName();
            } else {
                str = "null current looper";
            }
            String name = handler.getLooper().getThread().getName();
            int length = String.valueOf(name).length();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + length + 35 + 1);
            q.B(sb, "Must be called on ", name, " thread, but got ", str);
            d.h(sb, ".");
        }
    }

    public static void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        u2.g("Given String is empty or null");
    }

    public static void d(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        u2.g(str2);
    }

    public static void e(Object obj) {
        if (obj != null) {
            return;
        }
        d.f("null reference");
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        d.f(str);
    }
}
