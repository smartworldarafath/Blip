package kotlinx.serialization.json;

import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonEncodingException extends JsonException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonEncodingException(String str, String str2) {
        super(str.concat(r3));
        String str3;
        if (str2 != null && !StringsKt.t(str2)) {
            str3 = "\n".concat(str2);
        } else {
            str3 = "";
        }
    }
}
