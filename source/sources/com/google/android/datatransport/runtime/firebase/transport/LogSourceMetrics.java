package com.google.android.datatransport.runtime.firebase.transport;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LogSourceMetrics {
    public static final /* synthetic */ int c = 0;
    public final String a;
    public final List b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public String a = "";
        public List b = new ArrayList();
    }

    static {
        Collections.unmodifiableList(new Builder().b);
    }

    public LogSourceMetrics(String str, List list) {
        this.a = str;
        this.b = list;
    }
}
