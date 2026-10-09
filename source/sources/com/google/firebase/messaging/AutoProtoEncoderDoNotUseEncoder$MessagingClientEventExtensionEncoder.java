package com.google.firebase.messaging;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder implements ObjectEncoder<MessagingClientEventExtension> {
    public static final AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder a = new Object();
    public static final FieldDescriptor b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.firebase.messaging.AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("messagingClientEvent");
        ?? obj = new Object();
        obj.a = 1;
        b = q.d(obj, builder);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ((ObjectEncoderContext) obj2).e(b, ((MessagingClientEventExtension) obj).a);
    }
}
