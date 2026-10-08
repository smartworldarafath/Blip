package com.google.firebase.encoders.json;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import defpackage.aa;
import defpackage.z9;
import java.io.BufferedWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonDataEncoderBuilder implements EncoderConfig<JsonDataEncoderBuilder> {
    public static final aa f;
    public static final aa g;
    public final HashMap a;
    public final HashMap b;
    public final z9 c;
    public boolean d;
    public static final z9 e = new z9(0);
    public static final TimestampEncoder h = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TimestampEncoder implements ValueEncoder<Date> {
        public static final SimpleDateFormat a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        @Override // com.google.firebase.encoders.ValueEncoder
        public final void a(Object obj, Object obj2) {
            ((ValueEncoderContext) obj2).c(a.format((Date) obj));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [aa] */
    /* JADX WARN: Type inference failed for: r0v2, types: [aa] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.firebase.encoders.json.JsonDataEncoderBuilder$TimestampEncoder, java.lang.Object] */
    static {
        final int i = 0;
        f = new ValueEncoder() { // from class: aa
            @Override // com.google.firebase.encoders.ValueEncoder
            public final void a(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        z9 z9Var = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).c((String) obj);
                        return;
                    default:
                        z9 z9Var2 = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).d(((Boolean) obj).booleanValue());
                        return;
                }
            }
        };
        final int i2 = 1;
        g = new ValueEncoder() { // from class: aa
            @Override // com.google.firebase.encoders.ValueEncoder
            public final void a(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        z9 z9Var = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).c((String) obj);
                        return;
                    default:
                        z9 z9Var2 = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).d(((Boolean) obj).booleanValue());
                        return;
                }
            }
        };
    }

    public JsonDataEncoderBuilder() {
        HashMap hashMap = new HashMap();
        this.a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.b = hashMap2;
        this.c = e;
        this.d = false;
        hashMap2.put(String.class, f);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, g);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, h);
        hashMap.remove(Date.class);
    }

    public final DataEncoder a() {
        return new DataEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            @Override // com.google.firebase.encoders.DataEncoder
            public final void a(Object obj, BufferedWriter bufferedWriter) {
                JsonDataEncoderBuilder jsonDataEncoderBuilder = JsonDataEncoderBuilder.this;
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(bufferedWriter, jsonDataEncoderBuilder.a, jsonDataEncoderBuilder.b, jsonDataEncoderBuilder.c, jsonDataEncoderBuilder.d);
                jsonValueObjectEncoderContext.f(obj);
                jsonValueObjectEncoderContext.h();
                jsonValueObjectEncoderContext.b.flush();
            }
        };
    }

    public final EncoderConfig b(Class cls, ObjectEncoder objectEncoder) {
        this.a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }
}
