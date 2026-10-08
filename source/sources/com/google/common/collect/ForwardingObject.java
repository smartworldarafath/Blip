package com.google.common.collect;

import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingObject {
    public abstract Map a();

    public final String toString() {
        return a().toString();
    }
}
