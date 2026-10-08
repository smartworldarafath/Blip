package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.k8;
import defpackage.u2;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VelocityTracker1D {
    public final boolean a;
    public final Strategy b;
    public final int c;
    public final DataPointAtTime[] d;
    public int e;
    public final float[] f;
    public final float[] g;
    public final float[] h;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Strategy {
        public static final Strategy j;
        public static final Strategy k;
        public static final /* synthetic */ Strategy[] l;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.input.pointer.util.VelocityTracker1D$Strategy] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.input.pointer.util.VelocityTracker1D$Strategy] */
        static {
            ?? r0 = new Enum("Lsq2", 0);
            j = r0;
            ?? r1 = new Enum("Impulse", 1);
            k = r1;
            Strategy[] strategyArr = {r0, r1};
            l = strategyArr;
            EnumEntriesKt.a(strategyArr);
        }

        public static Strategy valueOf(String str) {
            return (Strategy) Enum.valueOf(Strategy.class, str);
        }

        public static Strategy[] values() {
            return (Strategy[]) l.clone();
        }
    }

    public VelocityTracker1D(boolean z, Strategy strategy) {
        int i;
        this.a = z;
        this.b = strategy;
        if (z && strategy.equals(Strategy.j)) {
            u2.l("Lsq2 not (yet) supported for differential axes");
            throw null;
        }
        int ordinal = strategy.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                i = 2;
            } else {
                k8.e();
                throw null;
            }
        } else {
            i = 3;
        }
        this.c = i;
        this.d = new DataPointAtTime[20];
        this.f = new float[20];
        this.g = new float[20];
        this.h = new float[3];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.compose.ui.input.pointer.util.DataPointAtTime] */
    public final void a(long j, float f) {
        int i = (this.e + 1) % 20;
        this.e = i;
        DataPointAtTime[] dataPointAtTimeArr = this.d;
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i];
        if (dataPointAtTime == 0) {
            ?? obj = new Object();
            obj.a = j;
            obj.b = f;
            dataPointAtTimeArr[i] = obj;
            return;
        }
        dataPointAtTime.a = j;
        dataPointAtTime.b = f;
    }

    public final float b() {
        boolean z;
        Strategy strategy;
        float[] fArr;
        int i;
        float[] fArr2;
        int i2;
        float f;
        float f2;
        float f3;
        float f4;
        int i3 = this.e;
        DataPointAtTime[] dataPointAtTimeArr = this.d;
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i3];
        if (dataPointAtTime == null) {
            return 0.0f;
        }
        int i4 = 0;
        DataPointAtTime dataPointAtTime2 = dataPointAtTime;
        do {
            DataPointAtTime dataPointAtTime3 = dataPointAtTimeArr[i3];
            z = this.a;
            strategy = this.b;
            float[] fArr3 = this.f;
            fArr = this.g;
            if (dataPointAtTime3 == null) {
                i = i4;
                fArr2 = fArr3;
                i2 = 1;
                f = 0.0f;
            } else {
                long j = dataPointAtTime.a;
                i = i4;
                f = 0.0f;
                long j2 = dataPointAtTime3.a;
                float f5 = (float) (j - j2);
                fArr2 = fArr3;
                i2 = 1;
                float abs = (float) Math.abs(j2 - dataPointAtTime2.a);
                if (strategy != Strategy.j && !z) {
                    dataPointAtTime2 = dataPointAtTime;
                } else {
                    dataPointAtTime2 = dataPointAtTime3;
                }
                if (f5 <= 100.0f && abs <= 40.0f) {
                    fArr2[i] = dataPointAtTime3.b;
                    fArr[i] = -f5;
                    if (i3 == 0) {
                        i3 = 20;
                    }
                    i3--;
                    i4 = i + 1;
                }
            }
            i4 = i;
            break;
        } while (i4 < 20);
        if (i4 >= this.c) {
            int ordinal = strategy.ordinal();
            if (ordinal != 0) {
                if (ordinal == i2) {
                    int i5 = i4 - i2;
                    float f6 = fArr[i5];
                    int i6 = i5;
                    float f7 = f;
                    while (i6 > 0) {
                        int i7 = i6 - 1;
                        float f8 = fArr[i7];
                        if (f6 != f8) {
                            if (z) {
                                f4 = -fArr2[i7];
                            } else {
                                f4 = fArr2[i6] - fArr2[i7];
                            }
                            float f9 = f4 / (f6 - f8);
                            float abs2 = (Math.abs(f9) * (f9 - (Math.signum(f7) * ((float) Math.sqrt(Math.abs(f7) * 2.0f))))) + f7;
                            if (i6 == i5) {
                                abs2 *= 0.5f;
                            }
                            f7 = abs2;
                        }
                        i6--;
                        f6 = f8;
                    }
                    f3 = Math.signum(f7) * ((float) Math.sqrt(Math.abs(f7) * 2.0f));
                } else {
                    k8.e();
                    return f;
                }
            } else {
                try {
                    float[] fArr4 = this.h;
                    VelocityTrackerKt.c(fArr, fArr2, i4, fArr4);
                    f2 = fArr4[1];
                } catch (IllegalArgumentException unused) {
                    f2 = f;
                }
                f3 = f2;
            }
            return f3 * 1000.0f;
        }
        return f;
    }

    public final float c(float f) {
        if (f <= 0.0f) {
            InlineClassHelperKt.b("maximumVelocity should be a positive value. You specified=" + f);
        }
        float b = b();
        if (b == 0.0f || Float.isNaN(b)) {
            return 0.0f;
        }
        if (b > 0.0f) {
            if (b > f) {
                return f;
            }
        } else {
            float f2 = -f;
            if (b < f2) {
                return f2;
            }
        }
        return b;
    }

    public /* synthetic */ VelocityTracker1D() {
        this(false, Strategy.j);
    }

    public VelocityTracker1D(boolean z) {
        this(z, Strategy.k);
    }
}
