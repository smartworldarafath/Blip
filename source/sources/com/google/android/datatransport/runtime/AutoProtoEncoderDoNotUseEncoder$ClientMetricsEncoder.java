package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder implements ObjectEncoder<ClientMetrics> {
    public static final AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder a = new Object();
    public static final FieldDescriptor b;
    public static final FieldDescriptor c;
    public static final FieldDescriptor d;
    public static final FieldDescriptor e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("window");
        ?? obj = new Object();
        obj.a = 1;
        b = q.d(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("logSourceMetrics");
        ?? obj2 = new Object();
        obj2.a = 2;
        c = q.d(obj2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("globalMetrics");
        ?? obj3 = new Object();
        obj3.a = 3;
        d = q.d(obj3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("appNamespace");
        ?? obj4 = new Object();
        obj4.a = 4;
        e = q.d(obj4, builder4);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ClientMetrics clientMetrics = (ClientMetrics) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(b, clientMetrics.a);
        objectEncoderContext.e(c, clientMetrics.b);
        objectEncoderContext.e(d, clientMetrics.c);
        objectEncoderContext.e(e, clientMetrics.d);
    }
}
