package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.selects.SelectClause1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ReceiveChannel<E> {
    SelectClause1 a();

    SelectClause1 b();

    Object c();

    Object e(Continuation continuation);

    Object i(Continuation continuation);

    ChannelIterator iterator();

    void n(CancellationException cancellationException);
}
