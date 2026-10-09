package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.runtime.AutoValue_EventInternal;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import defpackage.f7;
import defpackage.s3;
import defpackage.u2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TransportImpl<T> implements Transport<T> {
    public final TransportContext a;
    public final Encoding b;
    public final f7 c;
    public final TransportRuntime d;

    public TransportImpl(TransportContext transportContext, Encoding encoding, f7 f7Var, TransportRuntime transportRuntime) {
        this.a = transportContext;
        this.b = encoding;
        this.c = f7Var;
        this.d = transportRuntime;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.datatransport.runtime.AutoValue_SendRequest$Builder, java.lang.Object] */
    @Override // com.google.android.datatransport.Transport
    public final void a(Event event) {
        f7 f7Var = new f7(13);
        ?? obj = new Object();
        obj.a = this.a;
        obj.c = event;
        obj.b = "FCM_CLIENT_EVENT_LOGGING";
        obj.d = this.c;
        obj.e = this.b;
        String str = "";
        if (obj.e == null) {
            str = "".concat(" encoding");
        }
        if (str.isEmpty()) {
            TransportContext transportContext = obj.a;
            String str2 = obj.b;
            Event event2 = obj.c;
            f7 f7Var2 = obj.d;
            Encoding encoding = obj.e;
            TransportRuntime transportRuntime = this.d;
            Scheduler scheduler = transportRuntime.c;
            event2.getClass();
            TransportContext f = transportContext.f(Priority.j);
            AutoValue_EventInternal.Builder builder = (AutoValue_EventInternal.Builder) EventInternal.a();
            builder.d = Long.valueOf(transportRuntime.a.a());
            builder.e = Long.valueOf(transportRuntime.b.a());
            builder.g(str2);
            Object a = event2.a();
            f7Var2.getClass();
            MessagingClientEventExtension messagingClientEventExtension = (MessagingClientEventExtension) a;
            ProtobufEncoder protobufEncoder = com.google.firebase.messaging.ProtoEncoderDoNotUse.a;
            protobufEncoder.getClass();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                protobufEncoder.a(messagingClientEventExtension, byteArrayOutputStream);
            } catch (IOException unused) {
            }
            builder.c = new EncodedPayload(encoding, byteArrayOutputStream.toByteArray());
            builder.b = null;
            DefaultScheduler defaultScheduler = (DefaultScheduler) scheduler;
            defaultScheduler.b.execute(new s3(defaultScheduler, f, f7Var, builder.b()));
            return;
        }
        u2.l("Missing required properties:".concat(str));
    }
}
