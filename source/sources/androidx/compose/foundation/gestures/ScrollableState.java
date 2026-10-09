package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ScrollableState {
    boolean a();

    default boolean b() {
        return true;
    }

    Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl);

    default boolean d() {
        return true;
    }

    float e(float f);
}
