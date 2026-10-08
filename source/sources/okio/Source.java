package okio;

import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Source extends Closeable {
    long J0(long j, Buffer buffer);

    Timeout i();
}
