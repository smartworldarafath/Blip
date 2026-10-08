package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SendingCollector<T> implements FlowCollector<T> {
    public final SendChannel j;

    public SendingCollector(ProducerScope producerScope) {
        this.j = producerScope;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object r(Object obj, Continuation continuation) {
        Object k = this.j.k(obj, continuation);
        if (k == CoroutineSingletons.j) {
            return k;
        }
        return Unit.a;
    }
}
