package net.blip.shared;

import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysJvmKt$asList$8;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.random.Random;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.libblip.PathUtil;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScratchFileWriter {
    public final String a;

    public ScratchFileWriter(String str) {
        this.a = str;
    }

    public static Object b(ScratchFileWriter scratchFileWriter, String str, String str2, ContinuationImpl continuationImpl) {
        scratchFileWriter.getClass();
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.a);
        bytes.getClass();
        if (str2 == null) {
            String Q = kotlin.text.StringsKt.Q(32, kotlin.text.StringsKt.U(str).toString());
            if (kotlin.text.StringsKt.t(Q)) {
                Q = null;
            }
            str2 = Q;
            if (str2 == null) {
                str2 = "Text";
            }
        }
        return scratchFileWriter.a(bytes, str2, "txt", continuationImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(byte[] bArr, String str, String str2, ContinuationImpl continuationImpl) {
        ScratchFileWriter$write$1 scratchFileWriter$write$1;
        int i;
        if (continuationImpl instanceof ScratchFileWriter$write$1) {
            scratchFileWriter$write$1 = (ScratchFileWriter$write$1) continuationImpl;
            int i2 = scratchFileWriter$write$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scratchFileWriter$write$1.p = i2 - Integer.MIN_VALUE;
                Object obj = scratchFileWriter$write$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = scratchFileWriter$write$1.p;
                if (i == 0) {
                    if (i == 1) {
                        String str3 = scratchFileWriter$write$1.m;
                        ResultKt.b(obj);
                        return str3;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                char[] charArray = "|\\?*<\":>+[]/'".toCharArray();
                charArray.getClass();
                String a = StringKt.a(kotlin.text.StringsKt.U(str).toString(), "-", new ArraysKt___ArraysJvmKt$asList$8(charArray));
                String a2 = PathUtil.a(this.a, new String[]{q.g(Random.k.a(), "scratch-")});
                String a3 = PathUtil.a(a2, new String[]{jb.g(a, ".", str2)});
                DefaultScheduler defaultScheduler = Dispatchers.a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.l;
                ScratchFileWriter$write$2 scratchFileWriter$write$2 = new ScratchFileWriter$write$2(a2, a3, bArr, null);
                scratchFileWriter$write$1.m = a3;
                scratchFileWriter$write$1.p = 1;
                if (BuildersKt.e(defaultIoScheduler, scratchFileWriter$write$2, scratchFileWriter$write$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                return a3;
            }
        }
        scratchFileWriter$write$1 = new ScratchFileWriter$write$1(this, continuationImpl);
        Object obj2 = scratchFileWriter$write$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = scratchFileWriter$write$1.p;
        if (i == 0) {
        }
    }
}
