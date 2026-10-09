package androidx.media3.extractor;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CeaUtil {
    public static void a(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int i;
        int i2;
        boolean z;
        while (true) {
            boolean z2 = true;
            if (parsableByteArray.a() > 1) {
                int i3 = 0;
                while (true) {
                    if (parsableByteArray.a() == 0) {
                        i = -1;
                        break;
                    }
                    int z3 = parsableByteArray.z();
                    i3 += z3;
                    if (z3 != 255) {
                        i = i3;
                        break;
                    }
                }
                int i4 = 0;
                while (true) {
                    if (parsableByteArray.a() == 0) {
                        i4 = -1;
                        break;
                    }
                    int z4 = parsableByteArray.z();
                    i4 += z4;
                    if (z4 != 255) {
                        break;
                    }
                }
                int i5 = parsableByteArray.b + i4;
                if (i4 != -1 && i4 <= parsableByteArray.a()) {
                    if (i == 4 && i4 >= 8) {
                        int z5 = parsableByteArray.z();
                        int G = parsableByteArray.G();
                        if (G == 49) {
                            i2 = parsableByteArray.m();
                        } else {
                            i2 = 0;
                        }
                        int z6 = parsableByteArray.z();
                        if (G == 47) {
                            parsableByteArray.N(1);
                        }
                        if (z5 == 181 && ((G == 49 || G == 47) && z6 == 3)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (G == 49) {
                            if (i2 != 1195456820) {
                                z2 = false;
                            }
                            z &= z2;
                        }
                        if (z) {
                            b(j, parsableByteArray, trackOutputArr);
                        }
                    }
                } else {
                    Log.f("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    i5 = parsableByteArray.c;
                }
                parsableByteArray.M(i5);
            } else {
                return;
            }
        }
    }

    public static void b(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        boolean z;
        int z2 = parsableByteArray.z();
        if ((z2 & 64) != 0) {
            parsableByteArray.N(1);
            int i = (z2 & 31) * 3;
            int i2 = parsableByteArray.b;
            for (TrackOutput trackOutput : trackOutputArr) {
                parsableByteArray.M(i2);
                trackOutput.f(i, parsableByteArray);
                if (j != -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.n(z);
                trackOutput.g(j, 1, i, 0, null);
            }
        }
    }
}
