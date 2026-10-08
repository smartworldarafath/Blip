package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotFlowManagerImpl {
    public final Object a = new Object();

    public abstract void a(SendChannel sendChannel);

    public abstract void b();

    public abstract void c();

    public abstract Function1 d(SendChannel sendChannel);

    public abstract void e(Channel channel);
}
