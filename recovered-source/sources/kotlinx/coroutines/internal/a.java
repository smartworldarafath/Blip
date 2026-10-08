package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ThreadContextElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ThreadState threadState = (ThreadState) obj;
        CoroutineContext.Element element = (CoroutineContext.Element) obj2;
        if (element instanceof ThreadContextElement) {
            ThreadContextElement threadContextElement = (ThreadContextElement) element;
            CoroutineContext coroutineContext = threadState.a;
            Object o0 = threadContextElement.o0();
            Object[] objArr = threadState.b;
            int i = threadState.d;
            objArr[i] = o0;
            ThreadContextElement[] threadContextElementArr = threadState.c;
            threadState.d = i + 1;
            threadContextElementArr[i] = threadContextElement;
        }
        return threadState;
    }
}
