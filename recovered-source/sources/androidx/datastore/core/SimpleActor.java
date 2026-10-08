package androidx.datastore.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SimpleActor<T> {
    public final CoroutineScope a;
    public final Function2 b;
    public final BufferedChannel c = ChannelKt.a(Integer.MAX_VALUE, 6, null);
    public final AtomicInt d = new AtomicInt();

    public SimpleActor(final Function1 function1, Function2 function2, CoroutineScope coroutineScope) {
        this.a = coroutineScope;
        this.b = function2;
        Job job = (Job) coroutineScope.getCoroutineContext().v(Job.Key.j);
        if (job != null) {
            job.v0(new Function1<Throwable, Unit>() { // from class: androidx.datastore.core.SimpleActor.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    Unit unit;
                    Unit unit2;
                    Throwable th = (Throwable) obj;
                    ((DataStoreImpl$writeActor$1) Function1.this).b(th);
                    BufferedChannel bufferedChannel = this.c;
                    bufferedChannel.o(th, false);
                    do {
                        Object a = ChannelResult.a(bufferedChannel.c());
                        unit = Unit.a;
                        if (a != null) {
                            DataStoreImpl$writeActor$2.k.n(a, th);
                            unit2 = unit;
                        } else {
                            unit2 = null;
                        }
                    } while (unit2 != null);
                    return unit;
                }
            });
        }
    }
}
