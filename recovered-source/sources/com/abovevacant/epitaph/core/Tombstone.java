package com.abovevacant.epitaph.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Tombstone {
    public final List a;
    public final Signal b;
    public final String c;
    public final Map d;
    public final List e;

    public Tombstone(int i, int i2, ArrayList arrayList, Signal signal, String str, ArrayList arrayList2, ArrayList arrayList3, HashMap hashMap, HashMap hashMap2, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6) {
        this.a = Collections.unmodifiableList(arrayList);
        this.b = signal;
        this.c = str;
        Collections.unmodifiableList(arrayList2);
        Collections.unmodifiableList(arrayList3);
        this.d = Collections.unmodifiableMap(hashMap);
        Collections.unmodifiableMap(hashMap2);
        this.e = Collections.unmodifiableList(arrayList4);
        Collections.unmodifiableList(arrayList5);
        Collections.unmodifiableList(arrayList6);
    }
}
