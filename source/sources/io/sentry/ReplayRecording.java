package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.rrweb.RRWebBreadcrumbEvent;
import io.sentry.rrweb.RRWebEventType;
import io.sentry.rrweb.RRWebIncrementalSnapshotEvent;
import io.sentry.rrweb.RRWebInteractionEvent;
import io.sentry.rrweb.RRWebInteractionMoveEvent;
import io.sentry.rrweb.RRWebMetaEvent;
import io.sentry.rrweb.RRWebSpanEvent;
import io.sentry.rrweb.RRWebVideoEvent;
import io.sentry.util.MapObjectReader;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import io.sentry.vendor.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayRecording implements JsonSerializable {
    public Integer j;
    public List k;
    public HashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.ReplayRecording$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[RRWebEventType.values().length];
            b = iArr;
            try {
                iArr[RRWebEventType.IncrementalSnapshot.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[RRWebEventType.Meta.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[RRWebEventType.Custom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[RRWebIncrementalSnapshotEvent.IncrementalSource.values().length];
            a = iArr2;
            try {
                iArr2[RRWebIncrementalSnapshotEvent.IncrementalSource.MouseInteraction.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[RRWebIncrementalSnapshotEvent.IncrementalSource.TouchMove.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ReplayRecording> {
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00e0, code lost:
        
            if (r12.equals("breadcrumb") == false) goto L36;
         */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, io.sentry.ReplayRecording] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ?? obj = new Object();
            objectReader.H0();
            ArrayList arrayList = null;
            HashMap hashMap = null;
            Integer num = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("segment_id")) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    objectReader.D(iLogger, hashMap, e0);
                } else {
                    num = objectReader.y();
                }
            }
            objectReader.i0();
            objectReader.M(true);
            List list = (List) objectReader.G0();
            objectReader.M(false);
            if (list != null) {
                arrayList = new ArrayList(list.size());
                for (Object obj2 : list) {
                    if (obj2 instanceof Map) {
                        Map map = (Map) obj2;
                        MapObjectReader mapObjectReader = new MapObjectReader(map);
                        for (Map.Entry entry : map.entrySet()) {
                            String str = (String) entry.getKey();
                            Object value = entry.getValue();
                            if (str.equals("type")) {
                                RRWebEventType rRWebEventType = RRWebEventType.values()[((Integer) value).intValue()];
                                int i = AnonymousClass1.b[rRWebEventType.ordinal()];
                                char c = 2;
                                if (i != 1) {
                                    if (i != 2) {
                                        if (i != 3) {
                                            iLogger.c(SentryLevel.DEBUG, "Unsupported rrweb event type %s", rRWebEventType);
                                        } else {
                                            Map map2 = (Map) map.get("data");
                                            if (map2 == null) {
                                                map2 = Collections.EMPTY_MAP;
                                            }
                                            String str2 = (String) map2.get("tag");
                                            if (str2 != null) {
                                                switch (str2.hashCode()) {
                                                    case -226040934:
                                                        if (str2.equals("performanceSpan")) {
                                                            c = 0;
                                                            break;
                                                        }
                                                        break;
                                                    case 112202875:
                                                        if (str2.equals("video")) {
                                                            c = 1;
                                                            break;
                                                        }
                                                        break;
                                                    case 1106718723:
                                                        break;
                                                }
                                                c = 65535;
                                                switch (c) {
                                                    case 0:
                                                        arrayList.add(RRWebSpanEvent.Deserializer.b(mapObjectReader, iLogger));
                                                        break;
                                                    case 1:
                                                        arrayList.add(RRWebVideoEvent.Deserializer.b(mapObjectReader, iLogger));
                                                        break;
                                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                        arrayList.add(RRWebBreadcrumbEvent.Deserializer.b(mapObjectReader, iLogger));
                                                        break;
                                                    default:
                                                        iLogger.c(SentryLevel.DEBUG, "Unsupported rrweb event type %s", rRWebEventType);
                                                        break;
                                                }
                                            }
                                        }
                                    } else {
                                        arrayList.add(RRWebMetaEvent.Deserializer.b(mapObjectReader, iLogger));
                                    }
                                } else {
                                    Map map3 = (Map) map.get("data");
                                    if (map3 == null) {
                                        map3 = Collections.EMPTY_MAP;
                                    }
                                    Integer num2 = (Integer) map3.get("source");
                                    if (num2 != null) {
                                        RRWebIncrementalSnapshotEvent.IncrementalSource incrementalSource = RRWebIncrementalSnapshotEvent.IncrementalSource.values()[num2.intValue()];
                                        int i2 = AnonymousClass1.a[incrementalSource.ordinal()];
                                        if (i2 != 1) {
                                            if (i2 != 2) {
                                                iLogger.c(SentryLevel.DEBUG, "Unsupported rrweb incremental snapshot type %s", incrementalSource);
                                            } else {
                                                arrayList.add(RRWebInteractionMoveEvent.Deserializer.b(mapObjectReader, iLogger));
                                            }
                                        } else {
                                            arrayList.add(RRWebInteractionEvent.Deserializer.b(mapObjectReader, iLogger));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            obj.j = num;
            obj.k = arrayList;
            obj.l = hashMap;
            return obj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ReplayRecording.class == obj.getClass()) {
            ReplayRecording replayRecording = (ReplayRecording) obj;
            if (Objects.a(this.j, replayRecording.j) && Objects.a(this.k, replayRecording.k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        JsonWriter jsonWriter = jsonObjectWriter.a;
        if (this.j != null) {
            jsonObjectWriter.c("segment_id");
            jsonObjectWriter.i(this.j);
        }
        HashMap hashMap = this.l;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.l, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        jsonWriter.o = true;
        if (this.j != null) {
            jsonWriter.A();
            jsonWriter.a();
            jsonWriter.j.append((CharSequence) "\n");
        }
        List list = this.k;
        if (list != null) {
            jsonObjectWriter.g(iLogger, list);
        }
        jsonWriter.o = false;
    }
}
