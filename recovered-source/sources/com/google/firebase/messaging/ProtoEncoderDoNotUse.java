package com.google.firebase.messaging;

import com.google.firebase.encoders.proto.ProtobufEncoder;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProtoEncoderDoNotUse {
    public static final ProtobufEncoder a;

    static {
        ProtobufEncoder.Builder builder = new ProtobufEncoder.Builder();
        builder.a(ProtoEncoderDoNotUse.class, AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder.a);
        builder.a(MessagingClientEventExtension.class, AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder.a);
        builder.a(MessagingClientEvent.class, AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder.a);
        a = new ProtobufEncoder(new HashMap(builder.a), new HashMap(builder.b), builder.c);
    }
}
