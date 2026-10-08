package androidx.datastore.core;

import androidx.datastore.core.Message;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CompletableDeferred;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DataStoreImpl$writeActor$2 extends Lambda implements Function2<Message.Update<Object>, Throwable, Unit> {
    public static final DataStoreImpl$writeActor$2 k = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        Message.Update update = (Message.Update) obj;
        Throwable th = (Throwable) obj2;
        update.getClass();
        CompletableDeferred completableDeferred = update.b;
        if (th == null) {
            th = new CancellationException("DataStore scope was cancelled before updateData could complete");
        }
        completableDeferred.C0(th);
        return Unit.a;
    }
}
