package net.blip.libblip;

import bsarchive.Metadata;
import defpackage.u2;
import io.sentry.d;
import java.io.Serializable;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.TransferErr;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Transfer_DerivedKt {
    public static final float a(Transfer transfer) {
        transfer.getClass();
        float f = (float) transfer.z;
        float b = (float) b(transfer);
        if (b < 1.0f) {
            b = 1.0f;
        }
        return f / b;
    }

    public static final long b(Transfer transfer) {
        transfer.getClass();
        Metadata metadata = transfer.p;
        if (metadata != null) {
            return Metadata_DerivedKt.d(metadata);
        }
        return 0L;
    }

    public static final boolean c(Transfer transfer) {
        transfer.getClass();
        int ordinal = transfer.w.ordinal();
        if (ordinal != 3 && ordinal != 4 && ordinal != 5 && ordinal != 6 && ordinal != 7) {
            return false;
        }
        return true;
    }

    public static final TransferErr d(Transfer transfer) {
        boolean z;
        boolean z2;
        boolean z3;
        transfer.getClass();
        TransferErr transferErr = transfer.u;
        TransferErr transferErr2 = transfer.t;
        boolean z4 = false;
        if (transferErr2 == null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        if (transferErr == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        Pair pair = new Pair(valueOf, Boolean.valueOf(z2));
        Boolean bool = Boolean.TRUE;
        if (pair.equals(new Pair(bool, bool))) {
            return null;
        }
        Boolean bool2 = Boolean.FALSE;
        if (pair.equals(new Pair(bool2, bool))) {
            return transferErr2;
        }
        if (pair.equals(new Pair(bool, bool2))) {
            return transferErr;
        }
        if (transferErr2 != null) {
            if (transferErr != null) {
                Pair pair2 = new Pair(Boolean.valueOf(transferErr2.p), Boolean.valueOf(transferErr.p));
                if (!pair2.equals(new Pair(bool, bool2))) {
                    if (!pair2.equals(new Pair(bool2, bool))) {
                        if (pair2.equals(new Pair(bool, bool))) {
                            TransferErr.Code code = transferErr2.m;
                            TransferErr.Code code2 = TransferErr.Code.m;
                            if (code == code2) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            Boolean valueOf2 = Boolean.valueOf(z3);
                            if (transferErr.m == code2) {
                                z4 = true;
                            }
                            Pair pair3 = new Pair(valueOf2, Boolean.valueOf(z4));
                            if (!pair3.equals(new Pair(bool, bool2))) {
                                pair3.equals(new Pair(bool2, bool));
                                return transferErr2;
                            }
                        } else {
                            pair2.equals(new Pair(bool2, bool2));
                            Pair pair4 = new Pair(Boolean.valueOf(transferErr2.o), Boolean.valueOf(transferErr.o));
                            if (!pair4.equals(new Pair(bool, bool2))) {
                                if (!pair4.equals(new Pair(bool2, bool))) {
                                    if (!pair4.equals(new Pair(bool, bool))) {
                                        pair4.equals(new Pair(bool2, bool2));
                                        return transferErr2;
                                    }
                                }
                            }
                        }
                    }
                    return transferErr;
                }
                return transferErr2;
            }
            d.d();
            return null;
        }
        d.d();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Serializable e(Transfer transfer, String str, ContinuationImpl continuationImpl) {
        Transfer_DerivedKt$openableLocations$1 transfer_DerivedKt$openableLocations$1;
        int i;
        try {
            if (continuationImpl instanceof Transfer_DerivedKt$openableLocations$1) {
                Transfer_DerivedKt$openableLocations$1 transfer_DerivedKt$openableLocations$12 = (Transfer_DerivedKt$openableLocations$1) continuationImpl;
                int i2 = transfer_DerivedKt$openableLocations$12.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    transfer_DerivedKt$openableLocations$12.n = i2 - Integer.MIN_VALUE;
                    transfer_DerivedKt$openableLocations$1 = transfer_DerivedKt$openableLocations$12;
                    Object obj = transfer_DerivedKt$openableLocations$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = transfer_DerivedKt$openableLocations$1.n;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        transfer_DerivedKt$openableLocations$1.n = 1;
                        DefaultScheduler defaultScheduler = Dispatchers.a;
                        obj = BuildersKt.e(DefaultIoScheduler.l, new Transfer_DerivedKt$decodeArchive$2(str, transfer, null), transfer_DerivedKt$openableLocations$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Metadata_DerivedKt.b((Metadata) obj);
                }
            }
            if (i == 0) {
            }
            return Metadata_DerivedKt.b((Metadata) obj);
        } catch (Exception e) {
            LoggerKt.a.getClass();
            Logger.f(e, new Pair[0]);
            return EmptyList.j;
        }
        transfer_DerivedKt$openableLocations$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = transfer_DerivedKt$openableLocations$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = transfer_DerivedKt$openableLocations$1.n;
    }
}
