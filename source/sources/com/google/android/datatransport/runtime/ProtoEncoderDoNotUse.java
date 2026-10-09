package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProtoEncoderDoNotUse {
    public static final ProtobufEncoder a;

    static {
        ProtobufEncoder.Builder builder = new ProtobufEncoder.Builder();
        builder.a(ProtoEncoderDoNotUse.class, AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder.a);
        builder.a(ClientMetrics.class, AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder.a);
        builder.a(TimeWindow.class, AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder.a);
        builder.a(LogSourceMetrics.class, AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder.a);
        builder.a(LogEventDropped.class, AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder.a);
        builder.a(GlobalMetrics.class, AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder.a);
        builder.a(StorageMetrics.class, AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder.a);
        a = new ProtobufEncoder(new HashMap(builder.a), new HashMap(builder.b), builder.c);
    }
}
