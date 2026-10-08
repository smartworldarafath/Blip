package androidx.media3.extractor.flv;

import androidx.media3.common.util.ParsableByteArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ScriptTagPayloadReader extends TagPayloadReader {
    public long b;
    public long[] c;
    public long[] d;

    public static Serializable a(int i, ParsableByteArray parsableByteArray) {
        if (i != 0) {
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 8) {
                            if (i != 10) {
                                if (i != 11) {
                                    return null;
                                }
                                Date date = new Date((long) Double.longBitsToDouble(parsableByteArray.t()));
                                parsableByteArray.N(2);
                                return date;
                            }
                            int D = parsableByteArray.D();
                            ArrayList arrayList = new ArrayList(D);
                            for (int i2 = 0; i2 < D; i2++) {
                                Serializable a = a(parsableByteArray.z(), parsableByteArray);
                                if (a != null) {
                                    arrayList.add(a);
                                }
                            }
                            return arrayList;
                        }
                        return b(parsableByteArray);
                    }
                    HashMap hashMap = new HashMap();
                    while (true) {
                        String c = c(parsableByteArray);
                        int z2 = parsableByteArray.z();
                        if (z2 == 9) {
                            return hashMap;
                        }
                        Serializable a2 = a(z2, parsableByteArray);
                        if (a2 != null) {
                            hashMap.put(c, a2);
                        }
                    }
                } else {
                    return c(parsableByteArray);
                }
            } else {
                if (parsableByteArray.z() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        } else {
            return Double.valueOf(Double.longBitsToDouble(parsableByteArray.t()));
        }
    }

    public static HashMap b(ParsableByteArray parsableByteArray) {
        int D = parsableByteArray.D();
        HashMap hashMap = new HashMap(D);
        for (int i = 0; i < D; i++) {
            String c = c(parsableByteArray);
            Serializable a = a(parsableByteArray.z(), parsableByteArray);
            if (a != null) {
                hashMap.put(c, a);
            }
        }
        return hashMap;
    }

    public static String c(ParsableByteArray parsableByteArray) {
        int G = parsableByteArray.G();
        int i = parsableByteArray.b;
        parsableByteArray.N(G);
        return new String(parsableByteArray.a, i, G);
    }
}
