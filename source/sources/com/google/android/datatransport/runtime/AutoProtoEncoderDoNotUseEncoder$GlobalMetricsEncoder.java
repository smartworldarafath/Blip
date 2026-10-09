package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder implements ObjectEncoder<GlobalMetrics> {
    public static final AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder a = new Object();
    public static final FieldDescriptor b;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("storageMetrics");
        ?? obj = new Object();
        obj.a = 1;
        b = q.d(obj, builder);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ((ObjectEncoderContext) obj2).e(b, ((GlobalMetrics) obj).a);
    }
}
