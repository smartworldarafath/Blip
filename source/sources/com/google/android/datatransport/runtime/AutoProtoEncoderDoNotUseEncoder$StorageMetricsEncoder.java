package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder implements ObjectEncoder<StorageMetrics> {
    public static final AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder a = new Object();
    public static final FieldDescriptor b;
    public static final FieldDescriptor c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("currentCacheSizeBytes");
        ?? obj = new Object();
        obj.a = 1;
        b = q.d(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("maxCacheSizeBytes");
        ?? obj2 = new Object();
        obj2.a = 2;
        c = q.d(obj2, builder2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        StorageMetrics storageMetrics = (StorageMetrics) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.a(b, storageMetrics.a);
        objectEncoderContext.a(c, storageMetrics.b);
    }
}
