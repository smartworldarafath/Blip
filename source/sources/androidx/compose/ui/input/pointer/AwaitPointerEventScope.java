package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface AwaitPointerEventScope extends Density {
    long f();

    Object g0(long j, Function2 function2, ContinuationImpl continuationImpl);

    ViewConfiguration getViewConfiguration();

    long p0();

    Object q(PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl);

    PointerEvent s();

    Object z0(long j, Function2 function2, ContinuationImpl continuationImpl);
}
