package io.sentry.protocol;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectWriter;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Response implements JsonSerializable {
    public String j;
    public ConcurrentHashMap k;
    public Integer l;
    public Long m;
    public Object n;
    public ConcurrentHashMap o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Response> {
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("cookies");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("headers");
            jsonObjectWriter.g(iLogger, this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("status_code");
            jsonObjectWriter.g(iLogger, this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("body_size");
            jsonObjectWriter.g(iLogger, this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.n);
        }
        ConcurrentHashMap concurrentHashMap = this.o;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.o, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
