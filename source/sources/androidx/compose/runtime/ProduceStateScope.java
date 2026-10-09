package androidx.compose.runtime;

import defpackage.p0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ProduceStateScope<T> extends MutableState<T>, CoroutineScope {
    void f(p0 p0Var, ContinuationImpl continuationImpl);
}
