package io.sentry.android.core.internal.tombstone;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.abovevacant.epitaph.core.Architecture;
import com.abovevacant.epitaph.core.BacktraceFrame;
import com.abovevacant.epitaph.core.MemoryError$Tool;
import com.abovevacant.epitaph.core.MemoryError$Type;
import com.abovevacant.epitaph.core.MemoryMapping;
import com.abovevacant.epitaph.core.Register;
import com.abovevacant.epitaph.core.Signal;
import com.abovevacant.epitaph.core.Tombstone;
import com.abovevacant.epitaph.core.TombstoneThread;
import com.abovevacant.epitaph.io.WireReader;
import com.abovevacant.epitaph.wire.TombstoneDecoder;
import defpackage.k8;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.SentryStackTraceFactory;
import io.sentry.android.core.internal.util.NativeEventUtils;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryStackTrace;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TombstoneParser implements Closeable {
    public final InputStream j;
    public final List k;
    public final List l;
    public final String m;
    public final HashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ModuleAccumulator {
        public String a;
        public String b;
        public long c;
        public long d;

        public final DebugImage a() {
            long j = this.c;
            String str = this.b;
            if (str.isEmpty()) {
                return null;
            }
            DebugImage debugImage = new DebugImage();
            debugImage.setCodeId(str);
            debugImage.setCodeFile(this.a);
            String a = NativeEventUtils.a(str);
            if (a != null) {
                str = a;
            }
            debugImage.setDebugId(str);
            debugImage.setImageAddr(String.format("0x%x", Long.valueOf(j)));
            debugImage.setImageSize(this.d - j);
            debugImage.setType("elf");
            return debugImage;
        }
    }

    public TombstoneParser(InputStream inputStream, List list, List list2, String str) {
        HashMap hashMap = new HashMap();
        this.n = hashMap;
        this.j = inputStream;
        this.k = list;
        this.l = list2;
        this.m = str;
        hashMap.put("SIGILL", "IllegalInstruction");
        hashMap.put("SIGTRAP", "Trap");
        hashMap.put("SIGABRT", "Abort");
        hashMap.put("SIGBUS", "BusError");
        hashMap.put("SIGFPE", "FloatingPointException");
        hashMap.put("SIGSEGV", "Segfault");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0064. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v5, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, io.sentry.protocol.Message] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object, io.sentry.protocol.SentryException] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.Object, io.sentry.protocol.Mechanism] */
    /* JADX WARN: Type inference failed for: r3v9, types: [io.sentry.protocol.DebugMeta, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object, io.sentry.protocol.SentryStackTrace] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28, types: [io.sentry.android.core.internal.tombstone.TombstoneParser$ModuleAccumulator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [io.sentry.android.core.internal.tombstone.TombstoneParser$ModuleAccumulator] */
    /* JADX WARN: Type inference failed for: r8v2, types: [io.sentry.protocol.SentryThread, java.lang.Object] */
    public final SentryEvent a() {
        Boolean b;
        boolean z;
        boolean z2;
        DebugImage a;
        boolean z3;
        DebugImage a2;
        WireReader wireReader;
        HashMap hashMap;
        int i;
        WireReader wireReader2;
        int i2;
        WireReader wireReader3;
        HashMap hashMap2;
        HashMap hashMap3;
        WireReader wireReader4;
        WireReader wireReader5;
        WireReader wireReader6;
        WireReader wireReader7;
        InputStream inputStream = this.j;
        if (inputStream != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            WireReader wireReader8 = new WireReader(byteArrayOutputStream.toByteArray());
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            HashMap hashMap4 = new HashMap();
            HashMap hashMap5 = new HashMap();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            String str = "";
            int i3 = 0;
            int i4 = 0;
            String str2 = "";
            Signal signal = null;
            while (true) {
                int f = wireReader8.f();
                if (f != 0) {
                    int i5 = f >>> 3;
                    int i6 = f & 7;
                    int i7 = i3;
                    switch (i5) {
                        case 1:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            int g = (int) wireReader.g();
                            Architecture[] values = Architecture.values();
                            int length = values.length;
                            for (int i8 = 0; i8 < length && values[i8].j != g; i8++) {
                            }
                            i3 = i7;
                            i4 = i;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            WireReader.a(i5, 2, i6);
                            wireReader.e();
                            i3 = i7;
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            WireReader.a(i5, 2, i6);
                            wireReader.e();
                            i3 = i7;
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            WireReader.a(i5, 2, i6);
                            wireReader.e();
                            i3 = i7;
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            i3 = (int) wireReader.g();
                            i4 = i;
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            WireReader.a(i5, 0, i6);
                            i4 = (int) wireReader.g();
                            i3 = i7;
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            wireReader.g();
                            i3 = i7;
                            i4 = i;
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            WireReader.a(i5, 2, i6);
                            wireReader.e();
                            i3 = i7;
                            break;
                        case KeyModifiers.a /* 9 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            arrayList.add(wireReader.e());
                            i3 = i7;
                            i4 = i;
                            break;
                        case KeyModifiers.b /* 10 */:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            WireReader d = wireReader.d();
                            String str3 = "";
                            String str4 = str3;
                            int i9 = 0;
                            int i10 = 0;
                            while (true) {
                                int f2 = d.f();
                                if (f2 != 0) {
                                    int i11 = f2 >>> 3;
                                    int i12 = f2 & 7;
                                    switch (i11) {
                                        case 1:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            i9 = (int) wireReader2.g();
                                            i10 = i10;
                                            break;
                                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                            wireReader2 = d;
                                            i2 = i9;
                                            WireReader.a(i11, 2, i12);
                                            str3 = wireReader2.e();
                                            break;
                                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            i2 = i9;
                                            i10 = (int) wireReader2.g();
                                            break;
                                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 2, i12);
                                            str4 = wireReader2.e();
                                            break;
                                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            wireReader2.b();
                                            break;
                                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            wireReader2.g();
                                            break;
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            wireReader2.g();
                                            break;
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            wireReader2.b();
                                            break;
                                        case KeyModifiers.a /* 9 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 0, i12);
                                            wireReader2.g();
                                            break;
                                        case KeyModifiers.b /* 10 */:
                                            wireReader2 = d;
                                            WireReader.a(i11, 2, i12);
                                            TombstoneDecoder.b(wireReader2.d());
                                            break;
                                        default:
                                            d.h(i12);
                                            wireReader2 = d;
                                            break;
                                    }
                                    i9 = i2;
                                    d = wireReader2;
                                } else {
                                    signal = new Signal(i9, i10, str3, str4);
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                        case 11:
                        case KeyModifiers.c /* 12 */:
                        case 13:
                        default:
                            wireReader8.h(i6);
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            i = i4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 14:
                            wireReader = wireReader8;
                            hashMap = hashMap4;
                            WireReader.a(i5, 2, i6);
                            str2 = wireReader.e();
                            i3 = i7;
                            break;
                        case 15:
                            wireReader = wireReader8;
                            int i13 = 2;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            WireReader d2 = wireReader.d();
                            while (true) {
                                int f3 = d2.f();
                                if (f3 != 0) {
                                    int i14 = f3 >>> 3;
                                    int i15 = f3 & 7;
                                    if (i14 != 1) {
                                        if (i14 != i13) {
                                            d2.h(i15);
                                        } else {
                                            WireReader.a(i14, i13, i15);
                                            WireReader d3 = d2.d();
                                            while (true) {
                                                int f4 = d3.f();
                                                if (f4 != 0) {
                                                    int i16 = f4 >>> 3;
                                                    int i17 = f4 & 7;
                                                    WireReader wireReader9 = d2;
                                                    if (i16 != 1) {
                                                        if (i16 != i13) {
                                                            if (i16 != 3) {
                                                                d3.h(i17);
                                                                hashMap3 = hashMap4;
                                                            } else {
                                                                WireReader.a(i16, i13, i17);
                                                                WireReader d4 = d3.d();
                                                                ArrayList arrayList7 = new ArrayList();
                                                                ArrayList arrayList8 = new ArrayList();
                                                                while (true) {
                                                                    int f5 = d4.f();
                                                                    if (f5 != 0) {
                                                                        int i18 = f5 >>> 3;
                                                                        HashMap hashMap6 = hashMap4;
                                                                        int i19 = f5 & 7;
                                                                        switch (i18) {
                                                                            case 1:
                                                                                wireReader4 = d4;
                                                                                WireReader.a(i18, 0, i19);
                                                                                wireReader4.g();
                                                                                break;
                                                                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                                                wireReader4 = d4;
                                                                                WireReader.a(i18, 0, i19);
                                                                                wireReader4.g();
                                                                                break;
                                                                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                                                wireReader4 = d4;
                                                                                WireReader.a(i18, 0, i19);
                                                                                wireReader4.g();
                                                                                break;
                                                                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                                                wireReader4 = d4;
                                                                                WireReader.a(i18, 2, i19);
                                                                                arrayList7.add(TombstoneDecoder.a(wireReader4.d()));
                                                                                break;
                                                                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                                                wireReader4 = d4;
                                                                                WireReader.a(i18, 0, i19);
                                                                                wireReader4.g();
                                                                                break;
                                                                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                                                wireReader4 = d4;
                                                                                WireReader.a(i18, 2, i19);
                                                                                arrayList8.add(TombstoneDecoder.a(wireReader4.d()));
                                                                                break;
                                                                            default:
                                                                                d4.h(i19);
                                                                                wireReader4 = d4;
                                                                                break;
                                                                        }
                                                                        d4 = wireReader4;
                                                                        hashMap4 = hashMap6;
                                                                    } else {
                                                                        hashMap3 = hashMap4;
                                                                        Collections.unmodifiableList(arrayList7);
                                                                        Collections.unmodifiableList(arrayList8);
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            hashMap3 = hashMap4;
                                                            WireReader.a(i16, 0, i17);
                                                            int g2 = (int) d3.g();
                                                            MemoryError$Type[] values2 = MemoryError$Type.values();
                                                            int length2 = values2.length;
                                                            for (int i20 = 0; i20 < length2 && values2[i20].j != g2; i20++) {
                                                            }
                                                        }
                                                    } else {
                                                        hashMap3 = hashMap4;
                                                        WireReader.a(i16, 0, i17);
                                                        int g3 = (int) d3.g();
                                                        MemoryError$Tool[] values3 = MemoryError$Tool.values();
                                                        int length3 = values3.length;
                                                        for (int i21 = 0; i21 < length3 && values3[i21].j != g3; i21++) {
                                                        }
                                                    }
                                                    d2 = wireReader9;
                                                    hashMap4 = hashMap3;
                                                    i13 = 2;
                                                }
                                            }
                                        }
                                        wireReader3 = d2;
                                        hashMap2 = hashMap4;
                                    } else {
                                        wireReader3 = d2;
                                        hashMap2 = hashMap4;
                                        WireReader.a(i14, i13, i15);
                                        wireReader3.e();
                                    }
                                    d2 = wireReader3;
                                    hashMap4 = hashMap2;
                                } else {
                                    hashMap = hashMap4;
                                    arrayList3.add(new Object());
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                        case 16:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            TombstoneDecoder.c(wireReader.d(), hashMap4);
                            hashMap = hashMap4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 17:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            WireReader d5 = wireReader.d();
                            String str5 = "";
                            String str6 = str5;
                            long j = 0;
                            long j2 = 0;
                            long j3 = 0;
                            boolean z4 = false;
                            while (true) {
                                int f6 = d5.f();
                                if (f6 != 0) {
                                    int i22 = f6 >>> 3;
                                    int i23 = f6 & 7;
                                    switch (i22) {
                                        case 1:
                                            WireReader.a(i22, 0, i23);
                                            j = d5.g();
                                            break;
                                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                            WireReader.a(i22, 0, i23);
                                            j2 = d5.g();
                                            break;
                                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                            WireReader.a(i22, 0, i23);
                                            j3 = d5.g();
                                            break;
                                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                            WireReader.a(i22, 0, i23);
                                            z4 = d5.b();
                                            break;
                                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                            WireReader.a(i22, 0, i23);
                                            d5.b();
                                            break;
                                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                            WireReader.a(i22, 0, i23);
                                            d5.b();
                                            break;
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            WireReader.a(i22, 2, i23);
                                            str5 = d5.e();
                                            break;
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            WireReader.a(i22, 2, i23);
                                            str6 = d5.e();
                                            break;
                                        case KeyModifiers.a /* 9 */:
                                            WireReader.a(i22, 0, i23);
                                            d5.g();
                                            break;
                                        default:
                                            d5.h(i23);
                                            break;
                                    }
                                } else {
                                    arrayList4.add(new MemoryMapping(j, j2, j3, z4, str5, str6));
                                    hashMap = hashMap4;
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                        case 18:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            WireReader d6 = wireReader.d();
                            ArrayList arrayList9 = new ArrayList();
                            while (true) {
                                int f7 = d6.f();
                                if (f7 != 0) {
                                    int i24 = f7 >>> 3;
                                    int i25 = f7 & 7;
                                    if (i24 != 1) {
                                        if (i24 != 2) {
                                            d6.h(i25);
                                            wireReader5 = d6;
                                        } else {
                                            WireReader.a(i24, 2, i25);
                                            WireReader d7 = d6.d();
                                            while (true) {
                                                int f8 = d7.f();
                                                if (f8 != 0) {
                                                    int i26 = f8 >>> 3;
                                                    int i27 = f8 & 7;
                                                    switch (i26) {
                                                        case 1:
                                                            wireReader6 = d6;
                                                            WireReader.a(i26, 2, i27);
                                                            d7.e();
                                                            break;
                                                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                            wireReader6 = d6;
                                                            WireReader.a(i26, 0, i27);
                                                            d7.g();
                                                            break;
                                                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                            wireReader6 = d6;
                                                            WireReader.a(i26, 0, i27);
                                                            d7.g();
                                                            break;
                                                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                            wireReader6 = d6;
                                                            WireReader.a(i26, 0, i27);
                                                            d7.g();
                                                            break;
                                                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                            wireReader6 = d6;
                                                            WireReader.a(i26, 2, i27);
                                                            d7.e();
                                                            break;
                                                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                            wireReader6 = d6;
                                                            WireReader.a(i26, 2, i27);
                                                            d7.e();
                                                            break;
                                                        default:
                                                            d7.h(i27);
                                                            wireReader6 = d6;
                                                            break;
                                                    }
                                                    d6 = wireReader6;
                                                } else {
                                                    wireReader5 = d6;
                                                    arrayList9.add(new Object());
                                                }
                                            }
                                        }
                                    } else {
                                        wireReader5 = d6;
                                        WireReader.a(i24, 2, i25);
                                        wireReader5.e();
                                    }
                                    d6 = wireReader5;
                                } else {
                                    Object obj = new Object();
                                    Collections.unmodifiableList(arrayList9);
                                    arrayList5.add(obj);
                                    hashMap = hashMap4;
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                        case 19:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            WireReader d8 = wireReader.d();
                            while (true) {
                                int f9 = d8.f();
                                if (f9 != 0) {
                                    int i28 = f9 >>> 3;
                                    int i29 = f9 & 7;
                                    if (i28 != 1) {
                                        if (i28 != 2) {
                                            if (i28 != 3) {
                                                if (i28 != 4) {
                                                    d8.h(i29);
                                                } else {
                                                    WireReader.a(i28, 0, i29);
                                                    d8.g();
                                                }
                                            } else {
                                                WireReader.a(i28, 2, i29);
                                                d8.e();
                                            }
                                        } else {
                                            WireReader.a(i28, 2, i29);
                                            d8.e();
                                        }
                                    } else {
                                        WireReader.a(i28, 0, i29);
                                        d8.g();
                                    }
                                } else {
                                    arrayList6.add(new Object());
                                    hashMap = hashMap4;
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                        case 20:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            wireReader.g();
                            hashMap = hashMap4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 21:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            WireReader d9 = wireReader.d();
                            while (true) {
                                int f10 = d9.f();
                                if (f10 != 0) {
                                    int i30 = f10 >>> 3;
                                    int i31 = f10 & 7;
                                    if (i30 != 1) {
                                        if (i30 != 2) {
                                            d9.h(i31);
                                        } else {
                                            WireReader.a(i30, 2, i31);
                                            d9.c();
                                        }
                                    } else {
                                        WireReader.a(i30, 2, i31);
                                        d9.c();
                                    }
                                } else {
                                    arrayList2.add(new Object());
                                    hashMap = hashMap4;
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                        case 22:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            wireReader.g();
                            hashMap = hashMap4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 23:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            wireReader.b();
                            hashMap = hashMap4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 24:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 0, i6);
                            int g4 = (int) wireReader.g();
                            Architecture[] values4 = Architecture.values();
                            int length4 = values4.length;
                            for (int i32 = 0; i32 < length4 && values4[i32].j != g4; i32++) {
                            }
                            hashMap = hashMap4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 25:
                            wireReader = wireReader8;
                            i = i4;
                            WireReader.a(i5, 2, i6);
                            TombstoneDecoder.c(wireReader.d(), hashMap5);
                            hashMap = hashMap4;
                            i3 = i7;
                            i4 = i;
                            break;
                        case 26:
                            WireReader.a(i5, 2, i6);
                            WireReader d10 = wireReader8.d();
                            ArrayList arrayList10 = new ArrayList();
                            while (true) {
                                int f11 = d10.f();
                                if (f11 != 0) {
                                    int i33 = f11 >>> 3;
                                    WireReader wireReader10 = wireReader8;
                                    int i34 = f11 & 7;
                                    int i35 = i4;
                                    if (i33 != 1) {
                                        if (i33 != 2) {
                                            d10.h(i34);
                                            wireReader7 = d10;
                                        } else {
                                            WireReader.a(i33, 2, i34);
                                            WireReader d11 = d10.d();
                                            while (true) {
                                                int f12 = d11.f();
                                                if (f12 != 0) {
                                                    int i36 = f12 >>> 3;
                                                    int i37 = f12 & 7;
                                                    WireReader wireReader11 = d10;
                                                    if (i36 != 1) {
                                                        if (i36 != 2) {
                                                            if (i36 != 3) {
                                                                d11.h(i37);
                                                            } else {
                                                                WireReader.a(i36, 0, i37);
                                                                d11.g();
                                                            }
                                                        } else {
                                                            WireReader.a(i36, 0, i37);
                                                            d11.g();
                                                        }
                                                    } else {
                                                        WireReader.a(i36, 2, i37);
                                                        TombstoneDecoder.a(d11.d());
                                                    }
                                                    d10 = wireReader11;
                                                } else {
                                                    wireReader7 = d10;
                                                    arrayList10.add(new Object());
                                                }
                                            }
                                        }
                                    } else {
                                        wireReader7 = d10;
                                        WireReader.a(i33, 0, i34);
                                        wireReader7.g();
                                    }
                                    i4 = i35;
                                    wireReader8 = wireReader10;
                                    d10 = wireReader7;
                                } else {
                                    wireReader = wireReader8;
                                    i = i4;
                                    Collections.unmodifiableList(arrayList10);
                                    hashMap = hashMap4;
                                    i3 = i7;
                                    i4 = i;
                                    break;
                                }
                            }
                    }
                    wireReader8 = wireReader;
                    hashMap4 = hashMap;
                } else {
                    Tombstone tombstone = new Tombstone(i3, i4, arrayList, signal, str2, arrayList2, arrayList3, hashMap4, hashMap5, arrayList4, arrayList5, arrayList6);
                    SentryEvent sentryEvent = new SentryEvent();
                    sentryEvent.D = SentryLevel.FATAL;
                    sentryEvent.q = "native";
                    ?? obj2 = new Object();
                    String join = String.join(" ", tombstone.a);
                    Signal signal2 = tombstone.b;
                    if (signal2 != null) {
                        Locale locale = Locale.ROOT;
                        String str7 = tombstone.c;
                        if (!str7.isEmpty()) {
                            str = str7.concat(": ");
                        }
                        obj2.j = str + "Fatal signal " + signal2.b + " (" + signal2.a + "), " + signal2.d + " (" + signal2.c + "), pid = " + i3 + " (" + join + ")";
                    } else {
                        Locale locale2 = Locale.ROOT;
                        obj2.j = "Fatal exit pid = " + i3 + " (" + join + ")";
                    }
                    sentryEvent.z = obj2;
                    ArrayList arrayList11 = new ArrayList();
                    ModuleAccumulator moduleAccumulator = 0;
                    for (MemoryMapping memoryMapping : tombstone.e) {
                        boolean z5 = memoryMapping.d;
                        String str8 = memoryMapping.f;
                        String str9 = memoryMapping.e;
                        long j4 = memoryMapping.b;
                        if (z5 && !str9.isEmpty() && !str9.startsWith("/dev/")) {
                            boolean isEmpty = str8.isEmpty();
                            if (memoryMapping.c == 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (!isEmpty && z3) {
                                if (moduleAccumulator != 0 && str9.equals(moduleAccumulator.a)) {
                                    moduleAccumulator.d = j4;
                                } else {
                                    if (moduleAccumulator != 0 && (a2 = moduleAccumulator.a()) != null) {
                                        arrayList11.add(a2);
                                    }
                                    moduleAccumulator = new Object();
                                    moduleAccumulator.a = str9;
                                    moduleAccumulator.b = str8;
                                    moduleAccumulator.c = memoryMapping.a;
                                    moduleAccumulator.d = j4;
                                }
                            } else if (moduleAccumulator != 0 && str9.equals(moduleAccumulator.a)) {
                                moduleAccumulator.d = j4;
                            }
                        }
                    }
                    if (moduleAccumulator != 0 && (a = moduleAccumulator.a()) != null) {
                        arrayList11.add(a);
                    }
                    ?? obj3 = new Object();
                    obj3.k = new ArrayList(arrayList11);
                    sentryEvent.w = obj3;
                    ?? obj4 = new Object();
                    if (signal2 != null) {
                        String str10 = signal2.b;
                        obj4.j = str10;
                        obj4.k = (String) this.n.get(str10);
                        ?? obj5 = new Object();
                        obj5.j = NativeExceptionMechanism.TOMBSTONE.getValue();
                        obj5.m = Boolean.FALSE;
                        obj5.p = Boolean.TRUE;
                        HashMap hashMap7 = new HashMap();
                        hashMap7.put("number", Integer.valueOf(signal2.a));
                        hashMap7.put("name", signal2.b);
                        hashMap7.put("code", Integer.valueOf(signal2.c));
                        hashMap7.put("code_name", signal2.d);
                        obj5.n = new HashMap(hashMap7);
                        obj4.o = obj5;
                    }
                    obj4.m = Long.valueOf(i4);
                    ArrayList arrayList12 = new ArrayList(1);
                    arrayList12.add(obj4);
                    sentryEvent.h(arrayList12);
                    ArrayList d12 = sentryEvent.d();
                    Objects.requireNonNull(d12);
                    SentryException sentryException = (SentryException) d12.get(0);
                    ArrayList arrayList13 = new ArrayList();
                    Iterator it = tombstone.d.entrySet().iterator();
                    while (it.hasNext()) {
                        TombstoneThread tombstoneThread = (TombstoneThread) ((Map.Entry) it.next()).getValue();
                        ?? obj6 = new Object();
                        obj6.j = Long.valueOf(((Integer) r6.getKey()).intValue());
                        obj6.l = tombstoneThread.b;
                        ArrayList arrayList14 = new ArrayList();
                        for (BacktraceFrame backtraceFrame : tombstoneThread.d) {
                            String str11 = backtraceFrame.c;
                            String str12 = backtraceFrame.b;
                            if (!str11.endsWith("libart.so") && (!str11.startsWith("<anonymous") || !str12.isEmpty())) {
                                ?? obj7 = new Object();
                                obj7.u = str11;
                                obj7.n = str12;
                                Iterator it2 = it;
                                obj7.z = String.format("0x%x", Long.valueOf(backtraceFrame.a));
                                if (str12.isEmpty()) {
                                    b = Boolean.FALSE;
                                } else {
                                    b = SentryStackTraceFactory.b(str12, this.k, this.l);
                                }
                                String str13 = this.m;
                                if (str13 != null && str11.startsWith(str13)) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if ((b != null && b.booleanValue()) || z) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                obj7.t = Boolean.valueOf(z2);
                                arrayList14.add(0, obj7);
                                it = it2;
                            }
                        }
                        Iterator it3 = it;
                        ?? obj8 = new Object();
                        obj8.j = arrayList14;
                        obj8.m = SentryStackTrace.InstructionAddressAdjustment.NONE;
                        HashMap hashMap8 = new HashMap();
                        for (Register register : tombstoneThread.c) {
                            hashMap8.put(register.a, String.format("0x%x", Long.valueOf(register.b)));
                        }
                        obj8.k = hashMap8;
                        obj6.r = obj8;
                        if (i4 == tombstoneThread.a) {
                            obj6.n = Boolean.TRUE;
                            sentryException.n = obj8;
                        }
                        arrayList13.add(obj6);
                        it = it3;
                    }
                    sentryEvent.j(arrayList13);
                    return sentryEvent;
                }
            }
        } else {
            k8.j("No InputStream provided; use parse(Tombstone) instead.");
            return null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.j;
        if (inputStream != null) {
            inputStream.close();
        }
    }
}
