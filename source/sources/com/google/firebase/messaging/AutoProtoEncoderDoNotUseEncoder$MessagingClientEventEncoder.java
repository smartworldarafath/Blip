package com.google.firebase.messaging;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder implements ObjectEncoder<MessagingClientEvent> {
    public static final AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder a = new Object();
    public static final FieldDescriptor b;
    public static final FieldDescriptor c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;
    public static final FieldDescriptor f;
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final FieldDescriptor i;
    public static final FieldDescriptor j;
    public static final FieldDescriptor k;
    public static final FieldDescriptor l;
    public static final FieldDescriptor m;
    public static final FieldDescriptor n;
    public static final FieldDescriptor o;
    public static final FieldDescriptor p;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.firebase.messaging.AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v19, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v27, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v29, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("projectNumber");
        ?? obj = new Object();
        obj.a = 1;
        b = q.d(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("messageId");
        ?? obj2 = new Object();
        obj2.a = 2;
        c = q.d(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("instanceId");
        ?? obj3 = new Object();
        obj3.a = 3;
        d = q.d(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("messageType");
        ?? obj4 = new Object();
        obj4.a = 4;
        e = q.d(obj4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("sdkPlatform");
        ?? obj5 = new Object();
        obj5.a = 5;
        f = q.d(obj5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("packageName");
        ?? obj6 = new Object();
        obj6.a = 6;
        g = q.d(obj6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("collapseKey");
        ?? obj7 = new Object();
        obj7.a = 7;
        h = q.d(obj7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("priority");
        ?? obj8 = new Object();
        obj8.a = 8;
        i = q.d(obj8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("ttl");
        ?? obj9 = new Object();
        obj9.a = 9;
        j = q.d(obj9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("topic");
        ?? obj10 = new Object();
        obj10.a = 10;
        k = q.d(obj10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("bulkId");
        ?? obj11 = new Object();
        obj11.a = 11;
        l = q.d(obj11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder("event");
        ?? obj12 = new Object();
        obj12.a = 12;
        m = q.d(obj12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("analyticsLabel");
        ?? obj13 = new Object();
        obj13.a = 13;
        n = q.d(obj13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("campaignId");
        ?? obj14 = new Object();
        obj14.a = 14;
        o = q.d(obj14, builder14);
        FieldDescriptor.Builder builder15 = new FieldDescriptor.Builder("composerLabel");
        ?? obj15 = new Object();
        obj15.a = 15;
        p = q.d(obj15, builder15);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        MessagingClientEvent messagingClientEvent = (MessagingClientEvent) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.a(b, messagingClientEvent.a);
        objectEncoderContext.e(c, messagingClientEvent.b);
        objectEncoderContext.e(d, messagingClientEvent.c);
        objectEncoderContext.e(e, messagingClientEvent.d);
        objectEncoderContext.e(f, messagingClientEvent.e);
        objectEncoderContext.e(g, messagingClientEvent.f);
        objectEncoderContext.e(h, messagingClientEvent.g);
        objectEncoderContext.b(i, messagingClientEvent.h);
        objectEncoderContext.b(j, messagingClientEvent.i);
        objectEncoderContext.e(k, messagingClientEvent.j);
        objectEncoderContext.a(l, 0L);
        objectEncoderContext.e(m, messagingClientEvent.k);
        objectEncoderContext.e(n, messagingClientEvent.l);
        objectEncoderContext.a(o, 0L);
        objectEncoderContext.e(p, messagingClientEvent.m);
    }
}
