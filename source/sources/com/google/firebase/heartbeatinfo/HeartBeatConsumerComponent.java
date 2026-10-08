package com.google.firebase.heartbeatinfo;

import com.google.firebase.components.Component;
import defpackage.d5;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HeartBeatConsumerComponent {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.firebase.heartbeatinfo.HeartBeatConsumerComponent$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements HeartBeatConsumer {
    }

    public static Component a() {
        Object obj = new Object();
        Component.Builder builder = new Component.Builder(HeartBeatConsumer.class, new Class[0]);
        builder.e = 1;
        builder.f = new d5(0, obj);
        return builder.b();
    }
}
