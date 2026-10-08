package kotlinx.serialization.json;

import kotlinx.serialization.SerializationException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JsonException extends SerializationException {
    public final String j;

    public JsonException(String str) {
        super(str);
        this.j = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.j;
    }
}
