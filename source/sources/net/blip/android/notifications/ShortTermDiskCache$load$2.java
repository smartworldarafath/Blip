package net.blip.android.notifications;

import android.util.Base64;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.ShortTermDiskCache$load$2", f = "FirebaseNotificationService.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class ShortTermDiskCache$load$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Serializable>, Object> {
    public final /* synthetic */ ShortTermDiskCache n;
    public final /* synthetic */ String o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTermDiskCache$load$2(ShortTermDiskCache shortTermDiskCache, String str, Continuation continuation) {
        super(2, continuation);
        this.n = shortTermDiskCache;
        this.o = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ShortTermDiskCache$load$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ShortTermDiskCache$load$2(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        try {
            ShortTermDiskCache shortTermDiskCache = this.n;
            String str = this.o;
            File file = shortTermDiskCache.a;
            str.getClass();
            byte[] bytes = str.getBytes(Charsets.a);
            bytes.getClass();
            Object readObject = new ObjectInputStream(new FileInputStream(new File(file, Base64.encodeToString(bytes, 8)))).readObject();
            readObject.getClass();
            return (Serializable) readObject;
        } catch (EOFException | FileNotFoundException unused) {
            return null;
        }
    }
}
