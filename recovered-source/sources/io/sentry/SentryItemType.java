package io.sentry;

import io.sentry.clientreport.ClientReport;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryTransaction;
import java.io.IOException;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public enum SentryItemType implements JsonSerializable {
    Session("session"),
    Event("event"),
    UserFeedback("user_report"),
    Attachment("attachment"),
    Transaction("transaction"),
    Profile("profile"),
    ProfileChunk("profile_chunk"),
    ClientReport("client_report"),
    ReplayEvent("replay_event"),
    ReplayRecording("replay_recording"),
    ReplayVideo("replay_video"),
    CheckIn("check_in"),
    Feedback("feedback"),
    Log("log"),
    TraceMetric("trace_metric"),
    Span("span"),
    Unknown("__unknown__");

    private final String itemType;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryItemType> {
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            return SentryItemType.valueOfLabel(objectReader.r().toLowerCase(Locale.ROOT));
        }
    }

    SentryItemType(String str) {
        this.itemType = str;
    }

    public static SentryItemType resolve(Object obj) {
        if (obj instanceof SentryEvent) {
            if (((Feedback) ((SentryEvent) obj).k.w(Feedback.class, "feedback")) == null) {
                return Event;
            }
            return Feedback;
        }
        if (obj instanceof SentryTransaction) {
            return Transaction;
        }
        if (obj instanceof Session) {
            return Session;
        }
        if (obj instanceof ClientReport) {
            return ClientReport;
        }
        return Attachment;
    }

    public static SentryItemType valueOfLabel(String str) {
        for (SentryItemType sentryItemType : values()) {
            if (sentryItemType.itemType.equals(str)) {
                return sentryItemType;
            }
        }
        return Unknown;
    }

    public String getItemType() {
        return this.itemType;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        ((JsonObjectWriter) objectWriter).j(this.itemType);
    }
}
