package com.google.firebase.components;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComponentDiscovery<T> {
    public final Context a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MetadataRegistrarNameRetriever {
    }

    public ComponentDiscovery(Context context, MetadataRegistrarNameRetriever metadataRegistrarNameRetriever) {
        this.a = context;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.firebase.components.ComponentDiscovery$MetadataRegistrarNameRetriever, java.lang.Object] */
    public static ComponentDiscovery a(Context context) {
        return new ComponentDiscovery(context, new Object());
    }
}
