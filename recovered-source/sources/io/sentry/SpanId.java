package io.sentry;

import io.sentry.util.LazyEvaluator;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SpanId implements JsonSerializable {
    public static final SpanId k = new SpanId("00000000-0000-0000-0000-000000000000".replace("-", "").substring(0, 16));
    public final LazyEvaluator j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SpanId> {
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            return new SpanId(objectReader.r());
        }
    }

    public SpanId(String str) {
        Objects.requireNonNull(str, "value is required");
        this.j = new LazyEvaluator(new o(str));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SpanId.class == obj.getClass()) {
            return ((String) this.j.a()).equals(((SpanId) obj).j.a());
        }
        return false;
    }

    public final int hashCode() {
        return ((String) this.j.a()).hashCode();
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        ((JsonObjectWriter) objectWriter).j((String) this.j.a());
    }

    public final String toString() {
        return (String) this.j.a();
    }

    public SpanId() {
        this.j = new LazyEvaluator(new d(11));
    }
}
