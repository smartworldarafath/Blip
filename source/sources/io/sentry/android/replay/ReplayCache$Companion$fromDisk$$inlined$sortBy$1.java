package io.sentry.android.replay;

import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayCache$Companion$fromDisk$$inlined$sortBy$1<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Long.valueOf(((ReplayFrame) obj).b).compareTo(Long.valueOf(((ReplayFrame) obj2).b));
    }
}
