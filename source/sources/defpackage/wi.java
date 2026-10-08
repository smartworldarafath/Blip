package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class wi implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Ref$ObjectRef k;
    public final /* synthetic */ RealBufferedSource l;
    public final /* synthetic */ Ref$ObjectRef m;
    public final /* synthetic */ Ref$ObjectRef n;

    public /* synthetic */ wi(Ref$ObjectRef ref$ObjectRef, RealBufferedSource realBufferedSource, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3) {
        this.k = ref$ObjectRef;
        this.l = realBufferedSource;
        this.m = ref$ObjectRef2;
        this.n = ref$ObjectRef3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
        Ref$ObjectRef ref$ObjectRef = this.n;
        Ref$ObjectRef ref$ObjectRef2 = this.m;
        RealBufferedSource realBufferedSource = this.l;
        Ref$ObjectRef ref$ObjectRef3 = this.k;
        switch (i) {
            case 0:
                int intValue = ((Integer) obj).intValue();
                long longValue = ((Long) obj2).longValue();
                if (intValue == 21589) {
                    long j = 1;
                    if (longValue >= 1) {
                        byte readByte = realBufferedSource.readByte();
                        boolean z3 = false;
                        if ((readByte & 1) == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if ((readByte & 2) == 2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if ((readByte & 4) == 4) {
                            z3 = true;
                        }
                        if (z) {
                            j = 5;
                        }
                        if (z2) {
                            j += 4;
                        }
                        if (z3) {
                            j += 4;
                        }
                        if (longValue >= j) {
                            if (z) {
                                ref$ObjectRef3.j = Integer.valueOf(realBufferedSource.D0());
                            }
                            if (z2) {
                                ref$ObjectRef2.j = Integer.valueOf(realBufferedSource.D0());
                            }
                            if (z3) {
                                ref$ObjectRef.j = Integer.valueOf(realBufferedSource.D0());
                                return unit;
                            }
                            return unit;
                        }
                        k8.j("bad zip: extended timestamp extra too short");
                    } else {
                        k8.j("bad zip: extended timestamp extra too short");
                    }
                    return null;
                }
                return unit;
            default:
                int intValue2 = ((Integer) obj).intValue();
                long longValue2 = ((Long) obj2).longValue();
                if (intValue2 == 1) {
                    if (ref$ObjectRef3.j == null) {
                        if (longValue2 == 24) {
                            ref$ObjectRef3.j = Long.valueOf(realBufferedSource.O0());
                            ref$ObjectRef2.j = Long.valueOf(realBufferedSource.O0());
                            ref$ObjectRef.j = Long.valueOf(realBufferedSource.O0());
                            return unit;
                        }
                        k8.j("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                    } else {
                        k8.j("bad zip: NTFS extra attribute tag 0x0001 repeated");
                    }
                    return null;
                }
                return unit;
        }
    }

    public /* synthetic */ wi(RealBufferedSource realBufferedSource, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3) {
        this.l = realBufferedSource;
        this.k = ref$ObjectRef;
        this.m = ref$ObjectRef2;
        this.n = ref$ObjectRef3;
    }
}
