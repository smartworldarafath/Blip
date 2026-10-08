package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoBatchedLogRequestEncoder {
    public static final AutoBatchedLogRequestEncoder a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AndroidClientInfoEncoder implements ObjectEncoder<AndroidClientInfo> {
        public static final AndroidClientInfoEncoder a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.a("sdkVersion");
        public static final FieldDescriptor c = FieldDescriptor.a("model");
        public static final FieldDescriptor d = FieldDescriptor.a("hardware");
        public static final FieldDescriptor e = FieldDescriptor.a("device");
        public static final FieldDescriptor f = FieldDescriptor.a("product");
        public static final FieldDescriptor g = FieldDescriptor.a("osBuild");
        public static final FieldDescriptor h = FieldDescriptor.a("manufacturer");
        public static final FieldDescriptor i = FieldDescriptor.a("fingerprint");
        public static final FieldDescriptor j = FieldDescriptor.a("locale");
        public static final FieldDescriptor k = FieldDescriptor.a("country");
        public static final FieldDescriptor l = FieldDescriptor.a("mccMnc");
        public static final FieldDescriptor m = FieldDescriptor.a("applicationBuild");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(b, ((AutoValue_AndroidClientInfo) androidClientInfo).a);
            AutoValue_AndroidClientInfo autoValue_AndroidClientInfo = (AutoValue_AndroidClientInfo) androidClientInfo;
            objectEncoderContext.e(c, autoValue_AndroidClientInfo.b);
            objectEncoderContext.e(d, autoValue_AndroidClientInfo.c);
            objectEncoderContext.e(e, autoValue_AndroidClientInfo.d);
            objectEncoderContext.e(f, autoValue_AndroidClientInfo.e);
            objectEncoderContext.e(g, autoValue_AndroidClientInfo.f);
            objectEncoderContext.e(h, autoValue_AndroidClientInfo.g);
            objectEncoderContext.e(i, autoValue_AndroidClientInfo.h);
            objectEncoderContext.e(j, autoValue_AndroidClientInfo.i);
            objectEncoderContext.e(k, autoValue_AndroidClientInfo.j);
            objectEncoderContext.e(l, autoValue_AndroidClientInfo.k);
            objectEncoderContext.e(m, autoValue_AndroidClientInfo.l);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BatchedLogRequestEncoder implements ObjectEncoder<BatchedLogRequest> {
        public static final BatchedLogRequestEncoder a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.a("logRequest");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(b, ((AutoValue_BatchedLogRequest) ((BatchedLogRequest) obj)).a);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ClientInfoEncoder implements ObjectEncoder<ClientInfo> {
        public static final ClientInfoEncoder a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.a("clientType");
        public static final FieldDescriptor c = FieldDescriptor.a("androidClientInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ClientInfo clientInfo = (ClientInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(b, ((AutoValue_ClientInfo) clientInfo).a);
            objectEncoderContext.e(c, ((AutoValue_ClientInfo) clientInfo).b);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LogEventEncoder implements ObjectEncoder<LogEvent> {
        public static final LogEventEncoder a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.a("eventTimeMs");
        public static final FieldDescriptor c = FieldDescriptor.a("eventCode");
        public static final FieldDescriptor d = FieldDescriptor.a("eventUptimeMs");
        public static final FieldDescriptor e = FieldDescriptor.a("sourceExtension");
        public static final FieldDescriptor f = FieldDescriptor.a("sourceExtensionJsonProto3");
        public static final FieldDescriptor g = FieldDescriptor.a("timezoneOffsetSeconds");
        public static final FieldDescriptor h = FieldDescriptor.a("networkConnectionInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogEvent logEvent = (LogEvent) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, ((AutoValue_LogEvent) logEvent).a);
            AutoValue_LogEvent autoValue_LogEvent = (AutoValue_LogEvent) logEvent;
            objectEncoderContext.e(c, autoValue_LogEvent.b);
            objectEncoderContext.a(d, autoValue_LogEvent.c);
            objectEncoderContext.e(e, autoValue_LogEvent.d);
            objectEncoderContext.e(f, autoValue_LogEvent.e);
            objectEncoderContext.a(g, autoValue_LogEvent.f);
            objectEncoderContext.e(h, autoValue_LogEvent.g);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LogRequestEncoder implements ObjectEncoder<LogRequest> {
        public static final LogRequestEncoder a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.a("requestTimeMs");
        public static final FieldDescriptor c = FieldDescriptor.a("requestUptimeMs");
        public static final FieldDescriptor d = FieldDescriptor.a("clientInfo");
        public static final FieldDescriptor e = FieldDescriptor.a("logSource");
        public static final FieldDescriptor f = FieldDescriptor.a("logSourceName");
        public static final FieldDescriptor g = FieldDescriptor.a("logEvent");
        public static final FieldDescriptor h = FieldDescriptor.a("qosTier");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogRequest logRequest = (LogRequest) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, ((AutoValue_LogRequest) logRequest).a);
            AutoValue_LogRequest autoValue_LogRequest = (AutoValue_LogRequest) logRequest;
            objectEncoderContext.a(c, autoValue_LogRequest.b);
            objectEncoderContext.e(d, autoValue_LogRequest.c);
            objectEncoderContext.e(e, autoValue_LogRequest.d);
            objectEncoderContext.e(f, autoValue_LogRequest.e);
            objectEncoderContext.e(g, autoValue_LogRequest.f);
            objectEncoderContext.e(h, autoValue_LogRequest.g);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NetworkConnectionInfoEncoder implements ObjectEncoder<NetworkConnectionInfo> {
        public static final NetworkConnectionInfoEncoder a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.a("networkType");
        public static final FieldDescriptor c = FieldDescriptor.a("mobileSubtype");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(b, ((AutoValue_NetworkConnectionInfo) networkConnectionInfo).a);
            objectEncoderContext.e(c, ((AutoValue_NetworkConnectionInfo) networkConnectionInfo).b);
        }
    }

    public final void a(EncoderConfig encoderConfig) {
        BatchedLogRequestEncoder batchedLogRequestEncoder = BatchedLogRequestEncoder.a;
        JsonDataEncoderBuilder jsonDataEncoderBuilder = (JsonDataEncoderBuilder) encoderConfig;
        jsonDataEncoderBuilder.b(BatchedLogRequest.class, batchedLogRequestEncoder);
        jsonDataEncoderBuilder.b(AutoValue_BatchedLogRequest.class, batchedLogRequestEncoder);
        LogRequestEncoder logRequestEncoder = LogRequestEncoder.a;
        jsonDataEncoderBuilder.b(LogRequest.class, logRequestEncoder);
        jsonDataEncoderBuilder.b(AutoValue_LogRequest.class, logRequestEncoder);
        ClientInfoEncoder clientInfoEncoder = ClientInfoEncoder.a;
        jsonDataEncoderBuilder.b(ClientInfo.class, clientInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_ClientInfo.class, clientInfoEncoder);
        AndroidClientInfoEncoder androidClientInfoEncoder = AndroidClientInfoEncoder.a;
        jsonDataEncoderBuilder.b(AndroidClientInfo.class, androidClientInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_AndroidClientInfo.class, androidClientInfoEncoder);
        LogEventEncoder logEventEncoder = LogEventEncoder.a;
        jsonDataEncoderBuilder.b(LogEvent.class, logEventEncoder);
        jsonDataEncoderBuilder.b(AutoValue_LogEvent.class, logEventEncoder);
        NetworkConnectionInfoEncoder networkConnectionInfoEncoder = NetworkConnectionInfoEncoder.a;
        jsonDataEncoderBuilder.b(NetworkConnectionInfo.class, networkConnectionInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_NetworkConnectionInfo.class, networkConnectionInfoEncoder);
    }
}
