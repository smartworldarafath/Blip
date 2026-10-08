package net.blip.libblip;

import androidx.datastore.preferences.PreferencesProto$Value;
import bsarchive.Metadata;
import bsarchive.Metadata$Companion$ADAPTER$1;
import com.squareup.wire.ProtoReader;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.libblip.frontend.Transfer;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.libblip.Transfer_DerivedKt$decodeArchive$2", f = "Transfer+Derived.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class Transfer_DerivedKt$decodeArchive$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Metadata>, Object> {
    public final /* synthetic */ String n;
    public final /* synthetic */ Transfer o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Transfer_DerivedKt$decodeArchive$2(String str, Transfer transfer, Continuation continuation) {
        super(2, continuation);
        this.n = str;
        this.o = transfer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((Transfer_DerivedKt$decodeArchive$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new Transfer_DerivedKt$decodeArchive$2(this.n, this.o, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        ?? r0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        String str = Path.k;
        Path a = Path.Companion.a(PathUtil.a(this.n, new String[]{"TransferMetadata", this.o.m + ".pb"}));
        FileSystem.j.getClass();
        RealBufferedSource realBufferedSource = new RealBufferedSource(Okio.d(a.toFile()));
        Metadata th = null;
        try {
            Metadata$Companion$ADAPTER$1 metadata$Companion$ADAPTER$1 = Metadata.o;
            metadata$Companion$ADAPTER$1.getClass();
            Metadata metadata = (Metadata) metadata$Companion$ADAPTER$1.c(new ProtoReader(realBufferedSource));
            try {
                realBufferedSource.close();
            } catch (Throwable th2) {
                th = th2;
            }
            r0 = th;
            th = metadata;
        } catch (Throwable th3) {
            try {
                realBufferedSource.close();
                r0 = th3;
            } catch (Throwable th4) {
                ExceptionsKt.a(th3, th4);
                r0 = th3;
            }
        }
        if (r0 == 0) {
            return th;
        }
        throw r0;
    }
}
