package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryTracer;
import io.sentry.Span;
import io.sentry.SpanContext;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryTransaction extends SentryBaseEvent implements JsonSerializable {
    public Double A;
    public final ArrayList B;
    public final HashMap C;
    public TransactionInfo D;
    public ConcurrentHashMap E;
    public String y;
    public Double z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryTransaction> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0033. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v3, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v5, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryTransaction sentryTransaction = new SentryTransaction(new ArrayList(), new HashMap(), new TransactionInfo(TransactionNameSource.CUSTOM.apiName()));
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1526966919:
                        if (e0.equals("start_timestamp")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -362243017:
                        if (e0.equals("measurements")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 109638249:
                        if (e0.equals("spans")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 508716399:
                        if (e0.equals("transaction_info")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (e0.equals("transaction")) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        try {
                            Double c0 = objectReader.c0();
                            if (c0 == null) {
                                break;
                            } else {
                                sentryTransaction.z = c0;
                                break;
                            }
                        } catch (NumberFormatException unused) {
                            if (objectReader.k0(iLogger) == null) {
                                break;
                            } else {
                                sentryTransaction.z = Double.valueOf(r2.getTime() / 1000.0d);
                                break;
                            }
                        }
                    case 1:
                        HashMap Q = objectReader.Q(iLogger, new Object());
                        if (Q == null) {
                            break;
                        } else {
                            sentryTransaction.C.putAll(Q);
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        objectReader.r();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        try {
                            Double c02 = objectReader.c0();
                            if (c02 == null) {
                                break;
                            } else {
                                sentryTransaction.A = c02;
                                break;
                            }
                        } catch (NumberFormatException unused2) {
                            if (objectReader.k0(iLogger) == null) {
                                break;
                            } else {
                                sentryTransaction.A = Double.valueOf(r2.getTime() / 1000.0d);
                                break;
                            }
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        ArrayList R0 = objectReader.R0(iLogger, new Object());
                        if (R0 == null) {
                            break;
                        } else {
                            sentryTransaction.B.addAll(R0);
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        objectReader.H0();
                        String str = null;
                        ConcurrentHashMap concurrentHashMap2 = null;
                        while (objectReader.peek() == JsonToken.NAME) {
                            String e02 = objectReader.e0();
                            e02.getClass();
                            if (!e02.equals("source")) {
                                if (concurrentHashMap2 == null) {
                                    concurrentHashMap2 = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap2, e02);
                            } else {
                                str = objectReader.L();
                            }
                        }
                        TransactionInfo transactionInfo = new TransactionInfo(str);
                        transactionInfo.k = concurrentHashMap2;
                        objectReader.i0();
                        sentryTransaction.D = transactionInfo;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        sentryTransaction.y = objectReader.L();
                        break;
                    default:
                        if (!SentryBaseEvent.Deserializer.a(sentryTransaction, e0, objectReader, iLogger)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            objectReader.D(iLogger, concurrentHashMap, e0);
                            break;
                        } else {
                            break;
                        }
                }
            }
            sentryTransaction.E = concurrentHashMap;
            objectReader.i0();
            return sentryTransaction;
        }
    }

    public SentryTransaction(SentryTracer sentryTracer) {
        super(sentryTracer.a);
        this.B = new ArrayList();
        this.C = new HashMap();
        Span span = sentryTracer.b;
        this.z = Double.valueOf(span.a.d() / 1.0E9d);
        this.A = Double.valueOf(span.a.c(span.b) / 1.0E9d);
        this.y = sentryTracer.e;
        Iterator it = sentryTracer.c.iterator();
        while (it.hasNext()) {
            Span span2 = (Span) it.next();
            if (Boolean.TRUE.equals(span2.v())) {
                this.B.add(new SentrySpan(span2));
            }
        }
        Contexts contexts = this.k;
        contexts.l(sentryTracer.p);
        SpanContext spanContext = span.c;
        ConcurrentHashMap concurrentHashMap = span.j;
        SpanContext spanContext2 = new SpanContext(spanContext.j, spanContext.k, spanContext.l, spanContext.n, spanContext.o, spanContext.m, spanContext.p, spanContext.r);
        for (Map.Entry entry : spanContext.q.entrySet()) {
            b((String) entry.getKey(), (String) entry.getValue());
        }
        if (concurrentHashMap != null) {
            for (Map.Entry entry2 : concurrentHashMap.entrySet()) {
                String str = (String) entry2.getKey();
                Object value = entry2.getValue();
                if (str != null) {
                    Map map = spanContext2.s;
                    if (value == null) {
                        map.remove(str);
                    } else {
                        map.put(str, value);
                    }
                }
            }
        }
        spanContext.w.c();
        contexts.v(spanContext2);
        this.D = new TransactionInfo(sentryTracer.n.apiName());
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.y != null) {
            jsonObjectWriter.c("transaction");
            jsonObjectWriter.j(this.y);
        }
        jsonObjectWriter.c("start_timestamp");
        jsonObjectWriter.g(iLogger, DateUtils.a(this.z));
        if (this.A != null) {
            jsonObjectWriter.c("timestamp");
            jsonObjectWriter.g(iLogger, DateUtils.a(this.A));
        }
        ArrayList arrayList = this.B;
        if (!arrayList.isEmpty()) {
            jsonObjectWriter.c("spans");
            jsonObjectWriter.g(iLogger, arrayList);
        }
        jsonObjectWriter.c("type");
        jsonObjectWriter.j("transaction");
        HashMap hashMap = this.C;
        if (!hashMap.isEmpty()) {
            jsonObjectWriter.c("measurements");
            jsonObjectWriter.g(iLogger, hashMap);
        }
        jsonObjectWriter.c("transaction_info");
        jsonObjectWriter.g(iLogger, this.D);
        SentryBaseEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        ConcurrentHashMap concurrentHashMap = this.E;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.E, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public SentryTransaction(ArrayList arrayList, HashMap hashMap, TransactionInfo transactionInfo) {
        Double valueOf = Double.valueOf(0.0d);
        ArrayList arrayList2 = new ArrayList();
        this.B = arrayList2;
        HashMap hashMap2 = new HashMap();
        this.C = hashMap2;
        this.y = "";
        this.z = valueOf;
        this.A = null;
        arrayList2.addAll(arrayList);
        hashMap2.putAll(hashMap);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.C.putAll(((SentrySpan) it.next()).u);
        }
        this.D = transactionInfo;
    }
}
