package io.sentry.android.replay.gestures;

import io.sentry.transport.ICurrentDateProvider;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayGestureConverter {
    public final ICurrentDateProvider a;
    public final LinkedHashMap b;
    public long c;
    public long d;

    public ReplayGestureConverter(ICurrentDateProvider iCurrentDateProvider) {
        iCurrentDateProvider.getClass();
        this.a = iCurrentDateProvider;
        this.b = new LinkedHashMap(10);
    }
}
