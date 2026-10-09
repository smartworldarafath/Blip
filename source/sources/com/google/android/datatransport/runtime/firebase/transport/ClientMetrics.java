package com.google.android.datatransport.runtime.firebase.transport;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClientMetrics {
    public static final /* synthetic */ int e = 0;
    public final TimeWindow a;
    public final List b;
    public final GlobalMetrics c;
    public final String d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public TimeWindow a = null;
        public final ArrayList b = new ArrayList();
        public GlobalMetrics c = null;
        public String d = "";
    }

    static {
        Collections.unmodifiableList(new Builder().b);
    }

    public ClientMetrics(TimeWindow timeWindow, List list, GlobalMetrics globalMetrics, String str) {
        this.a = timeWindow;
        this.b = list;
        this.c = globalMetrics;
        this.d = str;
    }
}
