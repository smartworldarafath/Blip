package io.sentry;

import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SentryValues<T> {
    public final ArrayList a;

    public SentryValues(List list) {
        this.a = new ArrayList(list == null ? new ArrayList(0) : list);
    }
}
