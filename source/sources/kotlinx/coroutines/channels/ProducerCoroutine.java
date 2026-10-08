package kotlinx.coroutines.channels;

import kotlinx.coroutines.CoroutineExceptionHandlerKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProducerCoroutine<E> extends ChannelCoroutine<E> implements ProducerScope<E> {
    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void k0(Throwable th, boolean z) {
        if (!this.m.o(th, false) && !z) {
            CoroutineExceptionHandlerKt.a(th, this.l);
        }
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void l0(Object obj) {
        this.m.m(null);
    }
}
