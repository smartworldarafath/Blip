package com.google.android.datatransport.runtime;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder implements ObjectEncoder<ProtoEncoderDoNotUse> {
    public static final AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder, java.lang.Object] */
    static {
        FieldDescriptor.a("clientMetrics");
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        throw q.e(obj);
    }
}
