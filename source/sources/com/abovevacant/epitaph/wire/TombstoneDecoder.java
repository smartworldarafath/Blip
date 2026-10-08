package com.abovevacant.epitaph.wire;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.abovevacant.epitaph.core.BacktraceFrame;
import com.abovevacant.epitaph.core.MemoryDump;
import com.abovevacant.epitaph.core.Register;
import com.abovevacant.epitaph.core.TombstoneThread;
import com.abovevacant.epitaph.io.WireReader;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TombstoneDecoder {
    public static BacktraceFrame a(WireReader wireReader) {
        long j = 0;
        String str = "";
        String str2 = "";
        while (true) {
            int f = wireReader.f();
            if (f != 0) {
                int i = f >>> 3;
                int i2 = f & 7;
                switch (i) {
                    case 1:
                        WireReader.a(i, 0, i2);
                        wireReader.g();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        WireReader.a(i, 0, i2);
                        j = wireReader.g();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        WireReader.a(i, 0, i2);
                        wireReader.g();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        WireReader.a(i, 2, i2);
                        str = wireReader.e();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        WireReader.a(i, 0, i2);
                        wireReader.g();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        WireReader.a(i, 2, i2);
                        str2 = wireReader.e();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        WireReader.a(i, 0, i2);
                        wireReader.g();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        WireReader.a(i, 2, i2);
                        wireReader.e();
                        break;
                    default:
                        wireReader.h(i2);
                        break;
                }
            } else {
                return new BacktraceFrame(j, str, str2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.abovevacant.epitaph.core.MemoryDump, java.lang.Object] */
    public static MemoryDump b(WireReader wireReader) {
        while (true) {
            int f = wireReader.f();
            if (f != 0) {
                int i = f >>> 3;
                int i2 = f & 7;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 6) {
                                    wireReader.h(i2);
                                } else {
                                    WireReader.a(i, 2, i2);
                                    WireReader d = wireReader.d();
                                    while (true) {
                                        int f2 = d.f();
                                        if (f2 != 0) {
                                            int i3 = f2 >>> 3;
                                            int i4 = f2 & 7;
                                            if (i3 != 1) {
                                                d.h(i4);
                                            } else {
                                                WireReader.a(i3, 2, i4);
                                                d.c();
                                            }
                                        }
                                    }
                                }
                            } else {
                                WireReader.a(i, 2, i2);
                                wireReader.c();
                            }
                        } else {
                            WireReader.a(i, 0, i2);
                            wireReader.g();
                        }
                    } else {
                        WireReader.a(i, 2, i2);
                        wireReader.e();
                    }
                } else {
                    WireReader.a(i, 2, i2);
                    wireReader.e();
                }
            } else {
                return new Object();
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x004b. Please report as an issue. */
    public static void c(WireReader wireReader, HashMap hashMap) {
        int i;
        int i2;
        WireReader wireReader2;
        int i3 = 0;
        TombstoneThread tombstoneThread = null;
        int i4 = 0;
        while (true) {
            int f = wireReader.f();
            if (f != 0) {
                int i5 = f >>> 3;
                int i6 = f & 7;
                int i7 = 1;
                if (i5 != 1) {
                    if (i5 != 2) {
                        wireReader.h(i6);
                        i = i3;
                    } else {
                        WireReader.a(i5, 2, i6);
                        WireReader d = wireReader.d();
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        ArrayList arrayList5 = new ArrayList();
                        int i8 = i3;
                        String str = "";
                        while (true) {
                            int f2 = d.f();
                            if (f2 != 0) {
                                int i9 = f2 >>> 3;
                                int i10 = f2 & 7;
                                switch (i9) {
                                    case 1:
                                        i2 = i3;
                                        wireReader2 = d;
                                        WireReader.a(i9, i2, i10);
                                        i8 = (int) wireReader2.g();
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        wireReader2 = d;
                                        WireReader.a(i9, 2, i10);
                                        str = wireReader2.e();
                                        i2 = 0;
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        WireReader.a(i9, 2, i10);
                                        WireReader d2 = d.d();
                                        String str2 = "";
                                        long j = 0;
                                        while (true) {
                                            int f3 = d2.f();
                                            if (f3 != 0) {
                                                int i11 = f3 >>> 3;
                                                WireReader wireReader3 = d;
                                                int i12 = f3 & 7;
                                                if (i11 != i7) {
                                                    if (i11 != 2) {
                                                        d2.h(i12);
                                                    } else {
                                                        WireReader.a(i11, 0, i12);
                                                        j = d2.g();
                                                    }
                                                } else {
                                                    WireReader.a(i11, 2, i12);
                                                    str2 = d2.e();
                                                }
                                                d = wireReader3;
                                                i7 = 1;
                                            } else {
                                                wireReader2 = d;
                                                arrayList.add(new Register(j, str2));
                                                i2 = 0;
                                                break;
                                            }
                                        }
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                        WireReader.a(i9, 2, i10);
                                        arrayList4.add(a(d.d()));
                                        wireReader2 = d;
                                        i2 = 0;
                                        break;
                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                        WireReader.a(i9, 2, i10);
                                        arrayList5.add(b(d.d()));
                                        wireReader2 = d;
                                        i2 = 0;
                                        break;
                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                        WireReader.a(i9, i3, i10);
                                        d.g();
                                        i2 = i3;
                                        wireReader2 = d;
                                        break;
                                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                        WireReader.a(i9, 2, i10);
                                        arrayList2.add(d.e());
                                        wireReader2 = d;
                                        i2 = 0;
                                        break;
                                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                        WireReader.a(i9, i3, i10);
                                        d.g();
                                        i2 = i3;
                                        wireReader2 = d;
                                        break;
                                    case KeyModifiers.a /* 9 */:
                                        WireReader.a(i9, 2, i10);
                                        arrayList3.add(d.e());
                                        wireReader2 = d;
                                        i2 = 0;
                                        break;
                                    default:
                                        d.h(i10);
                                        wireReader2 = d;
                                        i2 = 0;
                                        break;
                                }
                                i3 = i2;
                                d = wireReader2;
                                i7 = 1;
                            } else {
                                i = i3;
                                tombstoneThread = new TombstoneThread(i8, str, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
                            }
                        }
                    }
                } else {
                    i = i3;
                    WireReader.a(i5, i, i6);
                    i4 = (int) wireReader.g();
                }
                i3 = i;
            } else {
                if (tombstoneThread != null) {
                    hashMap.put(Integer.valueOf(i4), tombstoneThread);
                    return;
                }
                return;
            }
        }
    }
}
