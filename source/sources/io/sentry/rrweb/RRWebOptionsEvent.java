package io.sentry.rrweb;

import io.sentry.ILogger;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectWriter;
import io.sentry.rrweb.RRWebEvent;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebOptionsEvent extends RRWebEvent implements JsonSerializable {
    public String l;
    public HashMap m;

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        RRWebEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        jsonObjectWriter.c("data");
        jsonObjectWriter.a();
        jsonObjectWriter.c("tag");
        jsonObjectWriter.j(this.l);
        jsonObjectWriter.c("payload");
        jsonObjectWriter.a();
        HashMap hashMap = this.m;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                Object obj = hashMap.get(str);
                jsonObjectWriter.c(str);
                jsonObjectWriter.g(iLogger, obj);
            }
        }
        jsonObjectWriter.b();
        jsonObjectWriter.b();
        jsonObjectWriter.b();
    }
}
