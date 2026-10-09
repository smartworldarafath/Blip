package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface FusibleFlow<T> extends Flow<T> {
    Flow b(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow);
}
