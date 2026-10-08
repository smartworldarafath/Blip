package net.blip.shared;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Path;
import okio.RealBufferedSink;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.shared.ScratchFileWriter$write$2", f = "ScratchFile.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ScratchFileWriter$write$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ String n;
    public final /* synthetic */ String o;
    public final /* synthetic */ byte[] p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScratchFileWriter$write$2(String str, String str2, byte[] bArr, Continuation continuation) {
        super(2, continuation);
        this.n = str;
        this.o = str2;
        this.p = bArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ScratchFileWriter$write$2 scratchFileWriter$write$2 = (ScratchFileWriter$write$2) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        scratchFileWriter$write$2.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ScratchFileWriter$write$2(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        JvmSystemFileSystem jvmSystemFileSystem = FileSystem.j;
        String str = Path.k;
        jvmSystemFileSystem.n(Path.Companion.a(this.n));
        Path a = Path.Companion.a(this.o);
        byte[] bArr = this.p;
        RealBufferedSink realBufferedSink = new RealBufferedSink(jvmSystemFileSystem.S(a, true));
        Throwable th = null;
        try {
            realBufferedSink.write(bArr);
            try {
                realBufferedSink.close();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            try {
                realBufferedSink.close();
            } catch (Throwable th4) {
                ExceptionsKt.a(th3, th4);
            }
            realBufferedSink = null;
            th = th3;
        }
        if (th == null) {
            realBufferedSink.close();
            return Unit.a;
        }
        throw th;
    }
}
