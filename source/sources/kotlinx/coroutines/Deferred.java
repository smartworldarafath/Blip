package kotlinx.coroutines;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Deferred<T> extends Job {
    Object Z(Continuation continuation);

    Object q();
}
