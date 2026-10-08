package io.sentry;

import io.sentry.clientreport.ClientReport;
import io.sentry.profilemeasurements.ProfileMeasurement;
import io.sentry.profilemeasurements.ProfileMeasurementValue;
import io.sentry.protocol.App;
import io.sentry.protocol.Browser;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.Device;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.Geo;
import io.sentry.protocol.Gpu;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.Message;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Request;
import io.sentry.protocol.SdkInfo;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryPackage;
import io.sentry.protocol.SentryRuntime;
import io.sentry.protocol.SentrySpan;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.protocol.ViewHierarchy;
import io.sentry.protocol.ViewHierarchyNode;
import io.sentry.rrweb.RRWebBreadcrumbEvent;
import io.sentry.rrweb.RRWebEventType;
import io.sentry.rrweb.RRWebInteractionEvent;
import io.sentry.rrweb.RRWebInteractionMoveEvent;
import io.sentry.rrweb.RRWebMetaEvent;
import io.sentry.rrweb.RRWebSpanEvent;
import io.sentry.rrweb.RRWebVideoEvent;
import io.sentry.util.Objects;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonSerializer implements ISerializer {
    public static final Charset c = Charset.forName("UTF-8");
    public final SentryOptions a;
    public final HashMap b;

    public JsonSerializer(SentryOptions sentryOptions) {
        this.a = sentryOptions;
        HashMap hashMap = new HashMap();
        this.b = hashMap;
        hashMap.put(App.class, new Object());
        hashMap.put(Breadcrumb.class, new Object());
        hashMap.put(Browser.class, new Object());
        hashMap.put(Contexts.class, new Object());
        hashMap.put(DebugImage.class, new Object());
        hashMap.put(DebugMeta.class, new Object());
        hashMap.put(Device.class, new Object());
        hashMap.put(Device.DeviceOrientation.class, new Object());
        hashMap.put(Feedback.class, new Object());
        hashMap.put(Gpu.class, new Object());
        hashMap.put(SentryStackTrace.InstructionAddressAdjustment.class, new Object());
        hashMap.put(MeasurementValue.class, new Object());
        hashMap.put(Mechanism.class, new Object());
        hashMap.put(Message.class, new Object());
        hashMap.put(OperatingSystem.class, new Object());
        hashMap.put(ProfileChunk.class, new Object());
        hashMap.put(ProfileContext.class, new Object());
        hashMap.put(ProfilingTraceData.class, new Object());
        hashMap.put(ProfilingTransactionData.class, new Object());
        hashMap.put(ProfileMeasurement.class, new Object());
        hashMap.put(ProfileMeasurementValue.class, new Object());
        hashMap.put(Request.class, new Object());
        hashMap.put(ReplayRecording.class, new Object());
        hashMap.put(RRWebBreadcrumbEvent.class, new Object());
        hashMap.put(RRWebEventType.class, new Object());
        hashMap.put(RRWebInteractionEvent.class, new Object());
        hashMap.put(RRWebInteractionMoveEvent.class, new Object());
        hashMap.put(RRWebMetaEvent.class, new Object());
        hashMap.put(RRWebSpanEvent.class, new Object());
        hashMap.put(RRWebVideoEvent.class, new Object());
        hashMap.put(SdkInfo.class, new Object());
        hashMap.put(SdkVersion.class, new Object());
        hashMap.put(SentryEnvelopeHeader.class, new Object());
        hashMap.put(SentryEnvelopeItemHeader.class, new Object());
        hashMap.put(SentryEvent.class, new Object());
        hashMap.put(SentryException.class, new Object());
        hashMap.put(SentryItemType.class, new Object());
        hashMap.put(SentryLevel.class, new Object());
        hashMap.put(SentryLockReason.class, new Object());
        hashMap.put(SentryLogEvents.class, new Object());
        hashMap.put(SentryMetricsEvents.class, new Object());
        hashMap.put(SentryPackage.class, new Object());
        hashMap.put(SentryRuntime.class, new Object());
        hashMap.put(SentryReplayEvent.class, new Object());
        hashMap.put(SentrySpan.class, new Object());
        hashMap.put(SentryStackFrame.class, new Object());
        hashMap.put(SentryStackTrace.class, new Object());
        hashMap.put(SentryAppStartProfilingOptions.class, new Object());
        hashMap.put(SentryThread.class, new Object());
        hashMap.put(SentryTransaction.class, new Object());
        hashMap.put(Session.class, new Object());
        hashMap.put(SpanContext.class, new Object());
        hashMap.put(SpanId.class, new Object());
        hashMap.put(SpanStatus.class, new Object());
        hashMap.put(User.class, new Object());
        hashMap.put(Geo.class, new Object());
        hashMap.put(UserFeedback.class, new Object());
        hashMap.put(ClientReport.class, new Object());
        hashMap.put(ViewHierarchyNode.class, new Object());
        hashMap.put(ViewHierarchy.class, new Object());
    }

    @Override // io.sentry.ISerializer
    public final void a(Object obj, Writer writer) {
        Objects.b(obj, "The entity is required.");
        SentryOptions sentryOptions = this.a;
        ILogger logger = sentryOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        if (logger.d(sentryLevel)) {
            sentryOptions.getLogger().c(sentryLevel, "Serializing object: %s", f(obj, sentryOptions.isEnablePrettySerializationOutput()));
        }
        JsonObjectWriter jsonObjectWriter = new JsonObjectWriter(writer, sentryOptions.getMaxDepth());
        jsonObjectWriter.b.a(jsonObjectWriter, sentryOptions.getLogger(), obj);
        writer.flush();
    }

    @Override // io.sentry.ISerializer
    public final void b(SentryEnvelope sentryEnvelope, OutputStream outputStream) {
        SentryOptions sentryOptions = this.a;
        Objects.b(sentryEnvelope, "The SentryEnvelope object is required.");
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new BufferedOutputStream(outputStream), c));
        try {
            sentryEnvelope.a.serialize(new JsonObjectWriter(bufferedWriter, sentryOptions.getMaxDepth()), sentryOptions.getLogger());
            bufferedWriter.write("\n");
            for (SentryEnvelopeItem sentryEnvelopeItem : sentryEnvelope.b) {
                try {
                    byte[] f = sentryEnvelopeItem.f();
                    sentryEnvelopeItem.a.serialize(new JsonObjectWriter(bufferedWriter, sentryOptions.getMaxDepth()), sentryOptions.getLogger());
                    bufferedWriter.write("\n");
                    bufferedWriter.flush();
                    outputStream.write(f);
                    bufferedWriter.write("\n");
                } catch (Exception e) {
                    sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to create envelope item. Dropping it.", e);
                }
            }
        } finally {
            bufferedWriter.flush();
        }
    }

    @Override // io.sentry.ISerializer
    public final String c(ConcurrentHashMap concurrentHashMap) {
        return f(concurrentHashMap, false);
    }

    @Override // io.sentry.ISerializer
    public final Object d(Reader reader, Class cls) {
        Object G0;
        SentryOptions sentryOptions = this.a;
        try {
            JsonObjectReader jsonObjectReader = new JsonObjectReader(reader);
            try {
                JsonDeserializer jsonDeserializer = (JsonDeserializer) this.b.get(cls);
                if (jsonDeserializer != null) {
                    G0 = cls.cast(jsonDeserializer.a(jsonObjectReader, sentryOptions.getLogger()));
                } else {
                    if (!cls.isArray() && !Collection.class.isAssignableFrom(cls) && !String.class.isAssignableFrom(cls) && !Map.class.isAssignableFrom(cls)) {
                        jsonObjectReader.close();
                        return null;
                    }
                    G0 = jsonObjectReader.G0();
                }
                jsonObjectReader.close();
                return G0;
            } catch (Throwable th) {
                try {
                    jsonObjectReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error when deserializing", e);
            return null;
        }
    }

    @Override // io.sentry.ISerializer
    public final SentryEnvelope e(BufferedInputStream bufferedInputStream) {
        SentryOptions sentryOptions = this.a;
        try {
            return sentryOptions.getEnvelopeReader().a(bufferedInputStream);
        } catch (IOException e) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error deserializing envelope.", e);
            return null;
        }
    }

    public final String f(Object obj, boolean z) {
        StringWriter stringWriter = new StringWriter();
        SentryOptions sentryOptions = this.a;
        JsonObjectWriter jsonObjectWriter = new JsonObjectWriter(stringWriter, sentryOptions.getMaxDepth());
        if (z) {
            jsonObjectWriter.d("\t");
        }
        jsonObjectWriter.b.a(jsonObjectWriter, sentryOptions.getLogger(), obj);
        return stringWriter.toString();
    }
}
