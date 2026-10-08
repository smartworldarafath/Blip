package net.blip.android.notifications;

import android.util.Base64;
import defpackage.u2;
import java.io.File;
import java.time.Duration;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.libblip.frontend.PeerMessageBody$TransferInvite;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShortTermDiskCache {
    public final File a;

    public ShortTermDiskCache(File file) {
        this.a = file;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Duration duration, ContinuationImpl continuationImpl) {
        ShortTermDiskCache$purge$1 shortTermDiskCache$purge$1;
        int i;
        if (continuationImpl instanceof ShortTermDiskCache$purge$1) {
            shortTermDiskCache$purge$1 = (ShortTermDiskCache$purge$1) continuationImpl;
            int i2 = shortTermDiskCache$purge$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                shortTermDiskCache$purge$1.o = i2 - Integer.MIN_VALUE;
                Object obj = shortTermDiskCache$purge$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = shortTermDiskCache$purge$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    DefaultScheduler defaultScheduler = Dispatchers.a;
                    DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.l;
                    ShortTermDiskCache$purge$2 shortTermDiskCache$purge$2 = new ShortTermDiskCache$purge$2(this, duration, null);
                    shortTermDiskCache$purge$1.o = 1;
                    if (BuildersKt.e(defaultIoScheduler, shortTermDiskCache$purge$2, shortTermDiskCache$purge$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }
        shortTermDiskCache$purge$1 = new ShortTermDiskCache$purge$1(this, continuationImpl);
        Object obj2 = shortTermDiskCache$purge$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = shortTermDiskCache$purge$1.o;
        if (i == 0) {
        }
        return Unit.a;
    }

    public final Object b(String str, PeerMessageBody$TransferInvite peerMessageBody$TransferInvite, ContinuationImpl continuationImpl) {
        File file = this.a;
        file.mkdirs();
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.a);
        bytes.getClass();
        File file2 = new File(file, Base64.encodeToString(bytes, 8));
        DefaultScheduler defaultScheduler = Dispatchers.a;
        Object e = BuildersKt.e(DefaultIoScheduler.l, new ShortTermDiskCache$store$2(peerMessageBody$TransferInvite, file2, null), continuationImpl);
        if (e == CoroutineSingletons.j) {
            return e;
        }
        return Unit.a;
    }
}
