package io.sentry.android.core.util;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidLazyEvaluator<T> {
    public volatile Object a = null;
    public final AndroidEvaluator b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AndroidEvaluator<T> {
        Object a(Context context);
    }

    public AndroidLazyEvaluator(AndroidEvaluator androidEvaluator) {
        this.b = androidEvaluator;
    }

    public final Object a(Context context) {
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        this.a = this.b.a(context);
                    }
                } finally {
                }
            }
        }
        return this.a;
    }
}
