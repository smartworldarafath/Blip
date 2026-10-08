package io.sentry.protocol;

import defpackage.fe;
import defpackage.u2;
import defpackage.y8;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.util.LazyEvaluator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryId implements JsonSerializable {
    public static final SentryId k = new SentryId("00000000-0000-0000-0000-000000000000".replace("-", ""));
    public final LazyEvaluator j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryId> {
        public static SentryId b(ObjectReader objectReader) {
            return new SentryId(objectReader.r());
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader);
        }
    }

    public SentryId(String str) {
        String str2;
        if (str.equals("0000-0000")) {
            str2 = "00000000-0000-0000-0000-000000000000";
        } else {
            str2 = str;
        }
        if (str2.length() != 32 && str2.length() != 36) {
            u2.g("String representation of SentryId has either 32 (UUID no dashes) or 36 characters long (completed UUID). Received: ".concat(str));
            throw null;
        }
        if (str2.length() == 36) {
            this.j = new LazyEvaluator(new y8(this, str2));
        } else {
            this.j = new LazyEvaluator(new y8(str2, 2));
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SentryId.class == obj.getClass()) {
            return ((String) this.j.a()).equals(((SentryId) obj).j.a());
        }
        return false;
    }

    public final int hashCode() {
        return ((String) this.j.a()).hashCode();
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        ((JsonObjectWriter) objectWriter).j(toString());
    }

    public final String toString() {
        return (String) this.j.a();
    }

    public SentryId() {
        this.j = new LazyEvaluator(new fe(26));
    }
}
