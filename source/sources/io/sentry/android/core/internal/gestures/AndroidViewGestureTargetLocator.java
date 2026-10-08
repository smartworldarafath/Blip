package io.sentry.android.core.internal.gestures;

import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.util.LazyEvaluator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidViewGestureTargetLocator implements GestureTargetLocator {
    public final LazyEvaluator a;

    public AndroidViewGestureTargetLocator(LazyEvaluator lazyEvaluator) {
        this.a = lazyEvaluator;
    }
}
