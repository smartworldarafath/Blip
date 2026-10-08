package kotlinx.coroutines;

import defpackage.a7;
import java.io.Closeable;
import kotlin.Deprecated;
import kotlin.coroutines.AbstractCoroutineContextKey;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ExecutorCoroutineDispatcher extends CoroutineDispatcher implements Closeable, AutoCloseable {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class Key extends AbstractCoroutineContextKey<CoroutineDispatcher, ExecutorCoroutineDispatcher> {
    }

    static {
        new AbstractCoroutineContextKey(CoroutineDispatcher.k, new a7(9));
    }
}
