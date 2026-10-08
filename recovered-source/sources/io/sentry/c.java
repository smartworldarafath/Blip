package io.sentry;

import io.sentry.JsonObjectDeserializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements JsonObjectDeserializer.NextValue {
    public final /* synthetic */ int j;
    public final /* synthetic */ JsonObjectReader k;

    public /* synthetic */ c(JsonObjectDeserializer jsonObjectDeserializer, JsonObjectReader jsonObjectReader) {
        this.j = 1;
        this.k = jsonObjectReader;
    }

    @Override // io.sentry.JsonObjectDeserializer.NextValue
    public final Object b() {
        int i = this.j;
        JsonObjectReader jsonObjectReader = this.k;
        switch (i) {
            case 0:
                return jsonObjectReader.r();
            case 1:
                try {
                    try {
                        return Integer.valueOf(jsonObjectReader.nextInt());
                    } catch (Exception unused) {
                        return Double.valueOf(jsonObjectReader.nextDouble());
                    }
                } catch (Exception unused2) {
                    return Long.valueOf(jsonObjectReader.nextLong());
                }
            default:
                return Boolean.valueOf(jsonObjectReader.n());
        }
    }

    public /* synthetic */ c(JsonObjectReader jsonObjectReader, int i) {
        this.j = i;
        this.k = jsonObjectReader;
    }
}
