package kotlinx.coroutines;

import kotlin.Unit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class StandaloneCoroutine extends AbstractCoroutine<Unit> {
    @Override // kotlinx.coroutines.JobSupport
    public final boolean K(Throwable th) {
        CoroutineExceptionHandlerKt.a(th, this.l);
        return true;
    }
}
