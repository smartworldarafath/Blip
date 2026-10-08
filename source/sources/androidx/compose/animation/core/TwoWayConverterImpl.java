package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TwoWayConverterImpl<T, V extends AnimationVector> implements TwoWayConverter<T, V> {
    public final Function1 a;
    public final Function1 b;

    public TwoWayConverterImpl(Function1 function1, Function1 function12) {
        this.a = function1;
        this.b = function12;
    }
}
