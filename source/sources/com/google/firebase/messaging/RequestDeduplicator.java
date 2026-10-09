package com.google.firebase.messaging;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RequestDeduplicator {
    public final Executor a;
    public final ArrayMap b = new SimpleArrayMap(0);

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public RequestDeduplicator(ExecutorService executorService) {
        this.a = executorService;
    }
}
