package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Animation<T, V extends AnimationVector> {
    boolean a();

    long b();

    TwoWayConverter c();

    AnimationVector d(long j);

    default boolean e(long j) {
        if (j >= b()) {
            return true;
        }
        return false;
    }

    Object f(long j);

    Object g();
}
