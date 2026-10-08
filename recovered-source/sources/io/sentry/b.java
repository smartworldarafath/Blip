package io.sentry;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Callable {
    public final /* synthetic */ int a;

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.a) {
            case 0:
                HostnameCache hostnameCache = HostnameCache.g;
                return InetAddress.getLocalHost();
            case 1:
                return null;
            default:
                return new ArrayList();
        }
    }
}
